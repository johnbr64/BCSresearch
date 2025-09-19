class AddFkPublicationsPublishers < ActiveRecord::Migration[6.1]
  def change
    add_index :publications, :publisher_id, name: "idx_publications_publisher_id"

    add_foreign_key :publications, :publishers,
      column: :publisher_id, primary_key: :Publisher_ID,
      name: "fk_publications_publishers"
  end
end

