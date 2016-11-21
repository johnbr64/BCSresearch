class AddCategoryIdToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :category_id, :integer
  end
end
