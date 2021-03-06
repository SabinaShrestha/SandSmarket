class Item < ActiveRecord::Base
  validates_presence_of :price
  belongs_to :category

  has_attached_file :item_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :item_photo, :content_type => /\Aimage\/.*\Z/
end
