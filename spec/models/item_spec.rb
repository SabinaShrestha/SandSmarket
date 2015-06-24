require 'rails_helper'

RSpec.describe Item, type: :model do

  describe Item do
    it { should belong_to(:category) }
  end

end