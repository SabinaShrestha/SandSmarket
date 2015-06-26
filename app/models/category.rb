class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :items

  has_attached_file :category_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :category_photo, :content_type => /\Aimage\/.*\Z/

  # def name
  #   "#{self.name}"
  # end

end
