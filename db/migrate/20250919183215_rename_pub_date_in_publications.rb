class RenamePubDateInPublications < ActiveRecord::Migration[6.1]
  def change
    rename_column :publications, :Pub_Date, :pub_date
  end
end
