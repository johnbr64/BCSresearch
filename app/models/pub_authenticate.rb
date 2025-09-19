class PubAuthenticate < ApplicationRecord
  self.table_name  = 'Pub_Authenticate'
  self.primary_key = 'User_Name'
end
