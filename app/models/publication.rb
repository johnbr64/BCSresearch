class Publication < ApplicationRecord
  belongs_to :authors, :foreign_key => 'Author_ID', :class_name => 'Author'
  belongs_to :publisher, :foreign_key =>'Publisher_ID', :class_name => 'Publisher'
  belongs_to :category, :foreign_key => 'category_id', :class_name => 'Category'
  belongs_to :p_type, :foreign_key => 'p_type_id', :class_name => 'PType'
  
end
