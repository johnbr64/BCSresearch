class IncreasePublicationsPublisherNameLength < ActiveRecord::Migration[6.1]
  def up
    change_column :publications, :Publisher_Name, :string, limit: 255
  end

  def down
    change_column :publications, :Publisher_Name, :string, limit: 30
  end
end

