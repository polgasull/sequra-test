require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe 'associations' do
    it { should have_many(:orders).dependent(:destroy) }
  end
    
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:cif) }
  end
end
