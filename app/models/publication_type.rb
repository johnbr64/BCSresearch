class PublicationType < ApplicationRecord
  self.table_name  = 'Publication_Types'
  self.primary_key = nil # no natural PK; Rails will just treat rows as records
end
