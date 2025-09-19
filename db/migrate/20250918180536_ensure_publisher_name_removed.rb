class EnsurePublisherNameRemoved < ActiveRecord::Migration[6.1]
  def change
    remove_column :publications, :Publisher_Name, :string if column_exists?(:publications, :Publisher_Name)
  end
end

