class RemovePublisherNameFromPublications < ActiveRecord::Migration[6.1]
  def change
    remove_column :publications, :Publisher_Name, :string
  end
end

