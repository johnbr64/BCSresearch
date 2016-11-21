class AddPublisherIdToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :Publisher_ID, :integer
  end
end
