class ChangeColumnNameInPTypes < ActiveRecord::Migration[5.0]
  def change
    rename_column :p_types, :type, :pub_type
  end
end
