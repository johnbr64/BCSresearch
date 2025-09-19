namespace :db do
  namespace :data do
    desc "Import legacy YAML data from db/data.yml (multi-doc OK). Usage: bin/rake 'db:data:import[Table1,Table2]'"
    task :import, [:table] => :environment do |_t, args|
      require "yaml"
      file = Rails.root.join("db", "data.yml")
      abort "❌ #{file} not found" unless File.exist?(file)

      # Load single or multi-doc YAML into one hash
      merged = {}
      YAML.load_stream(File.read(file)) { |doc| merged.merge!(doc || {}) }

      # Figure out which tables to import
      tables =
        if args[:table].present?
          puts "Importing tables: #{args[:table]}"
          args[:table].split(",").map { |s| s.strip }
        else
          preferred = %w[Authors Publishers Publication_Types Genre Pub_Authenticate Publications]
          tables = preferred.select { |k| merged.key?(k) }
          tables = merged.keys if tables.empty?
          puts "Importing tables: #{tables.join(', ')}"
          tables
        end

      tables.each do |table_name|
        section = merged[table_name]
        unless section.is_a?(Hash) && section["columns"].is_a?(Array) && section["records"].is_a?(Array)
          puts "⚠️ No section named #{table_name} in #{file}"
          next
        end

        columns = section["columns"]
        rows    = section["records"]

        # Resolve model class. Try singularized first, then exact table name camelized.
        candidates = [table_name.singularize.camelize, table_name.camelize]
        klass = candidates.map { |n| n.safe_constantize }.compact.first
        unless klass
          puts "⚠️ No model found for #{candidates.join(' / ')}, skipping"
          next
        end

        pk = klass.primary_key

        imported = 0
        updated  = 0

        ActiveRecord::Base.transaction do
          rows.each do |row|
            attrs = Hash[columns.zip(row)]

            if pk && attrs.key?(pk)
              rec = klass.find_or_initialize_by(pk => attrs[pk])
              was_new = rec.new_record?
              rec.assign_attributes(attrs)
              rec.save!
              was_new ? imported += 1 : updated += 1
            else
              rec = klass.where(attrs).first
              if rec
                updated += 1
              else
                klass.create!(attrs)
                imported += 1
              end
            end
          end
        end

        puts "✅ #{table_name}: imported #{imported}, updated #{updated}"
      end
    end
  end
end
