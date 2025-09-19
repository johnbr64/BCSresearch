class Genre < ApplicationRecord
  self.table_name  = 'Genre'
  self.primary_key = 'Genre'  # single-column table; use the column itself as PK
end
