class CreatePTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :p_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
