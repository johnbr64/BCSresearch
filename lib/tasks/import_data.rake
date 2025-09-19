namespace :db do
  namespace :data do
    desc "Import legacy YAML data from db/data.yml"
    task import: :environment do
      require "yaml"

      path = Rails.root.join("db", "data.yml")
      abort "Missing #{path}" unless File.exist?(path)

      payload = YAML.load_file(path)
      conn = ActiveRecord::Base.connection

      begin
        conn.execute("SET FOREIGN_KEY_CHECKS=0") if conn.adapter_name =~ /mysql/i

        payload.each do |table, content|
          columns = content["columns"] || content[:columns]
          records = content["records"] || content[:records] || []
          next if records.empty?

          quoted_table = conn.quote_table_name(table)
          cols_sql = columns.map { |c| conn.quote_column_name(c) }.join(",")

          # clear existing rows to avoid duplicates
          begin
            conn.execute("TRUNCATE TABLE #{quoted_table}")
          rescue
            conn.execute("DELETE FROM #{quoted_table}")
          end

          values_sql = records.map { |row|
            "(" + row.map { |v| conn.quote(v) }.join(",") + ")"
          }.join(",")

          sql = "INSERT INTO #{quoted_table} (#{cols_sql}) VALUES #{values_sql}"
          conn.execute(sql)
          puts "Imported #{records.size} rows into #{table}"
        end
      ensure
        conn.execute("SET FOREIGN_KEY_CHECKS=1") if conn && conn.adapter_name =~ /mysql/i
      end
    end
  end
end
