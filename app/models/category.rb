class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :items

  def name
    "#{self.name}"
  end

end
