class Item < ActiveRecord::Base
  validates_presence_of :price
  belongs_to :category
end
