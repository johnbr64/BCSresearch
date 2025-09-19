class BackfillPublicationPublishers < ActiveRecord::Migration[6.1]
  disable_ddl_transaction!

  def up
    say_with_time "Backfilling publications.publisher_id from Publisher_Name" do
      execute <<~SQL
        UPDATE publications p
        JOIN publishers s
          ON LOWER(TRIM(p.Publisher_Name)) = LOWER(TRIM(s.Publisher_Name))
        SET p.publisher_id = s.Publisher_ID
        WHERE p.publisher_id IS NULL
          AND p.Publisher_Name IS NOT NULL
          AND p.Publisher_Name <> '';
      SQL
    end
  end

  def down
    # Irreversible: we won't null out publisher_id on down
  end
end


