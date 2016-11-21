class AddPTypeIdToPublications < ActiveRecord::Migration[5.0]
  def change
    add_column :publications, :p_type_id, :integer
  end
end
