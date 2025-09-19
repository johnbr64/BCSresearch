class AddIndexesOnPublicationsFks < ActiveRecord::Migration[6.1]
  def change
    add_index :publications, :Publisher_ID,
              name: "idx_publications_publisher_id",
              algorithm: :copy unless index_exists?(:publications, :Publisher_ID, name: "idx_publications_publisher_id")

    add_index :publications, :category_id,
              name: "idx_publications_category_id",
              algorithm: :copy unless index_exists?(:publications, :category_id, name: "idx_publications_category_id")

    add_index :publications, :p_type_id,
              name: "idx_publications_p_type_id",
              algorithm: :copy unless index_exists?(:publications, :p_type_id, name: "idx_publications_p_type_id")
  end
end


