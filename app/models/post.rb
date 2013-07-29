class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title,:category_id
  has_many:commemts
  belongs_to:category
end
