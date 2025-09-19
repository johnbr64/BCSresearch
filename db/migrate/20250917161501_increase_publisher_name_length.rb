class IncreasePublisherNameLength < ActiveRecord::Migration[6.1]
  def up
    change_column :publishers, :Publisher_Name, :string, limit: 255, null: false
  end

  def down
    change_column :publishers, :Publisher_Name, :string, limit: 30, null: false
  end
end

