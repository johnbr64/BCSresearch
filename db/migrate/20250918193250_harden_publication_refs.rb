class HardenPublicationRefs < ActiveRecord::Migration[6.1]
  def change
    # Indexes (skip if they already exist)
    add_index :publications, :Author_ID,   name: "idx_publications_author_id"   unless index_exists?(:publications, :Author_ID,   name: "idx_publications_author_id")
    add_index :publications, :category_id, name: "idx_publications_category_id" unless index_exists?(:publications, :category_id, name: "idx_publications_category_id")
    add_index :publications, :p_type_id,   name: "idx_publications_p_type_id"   unless index_exists?(:publications, :p_type_id,   name: "idx_publications_p_type_id")

    # Foreign keys (adjust target tables if your names differ)
    add_foreign_key :publications, :authors,    column: :Author_ID   unless foreign_key_exists?(:publications, :authors,    column: :Author_ID)
    add_foreign_key :publications, :categories, column: :category_id unless foreign_key_exists?(:publications, :categories, column: :category_id)
    add_foreign_key :publications, :p_types,    column: :p_type_id   unless foreign_key_exists?(:publications, :p_types,    column: :p_type_id)
  end
end


