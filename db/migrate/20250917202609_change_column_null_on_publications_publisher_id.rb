class ChangeColumnNullOnPublicationsPublisherId < ActiveRecord::Migration[6.1]
  def change
    change_column_null :publications, :Publisher_ID, false
  end
end


