require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @category = Category.create!(name: 'homes', description: 'A place to relax')
  end
end
