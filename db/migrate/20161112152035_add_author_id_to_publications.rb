class AddAuthorIdToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :Author_ID, :integer
  end
end
