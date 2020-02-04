require 'spec_helper'
require 'rails_helper'

# validates :name, :phoneNumber, :address, :logoUrl, presence: true

describe 'Business Model' do
  describe 'validations' do
    it 'should accept entries that fulfill all validations' do
      expect(Business.new(name: 'IC Rental Properties', phoneNumber: "515-971-7560", address: "321 Iowa Avenue, Iowa City",
                          logoUrl: "www.test.com").valid?).to be_truthy
    end
    # it 'should reject entries without a name' do
    #   expect(Property.new(address: nil, bathrooms: 1, bedrooms: 2,
    #                       price: 1000).valid?).to be_falsey
    # end
    # it 'should reject entries without a logurl' do
    #   expect(Property.new(address: '100 1st Ave', bathrooms: nil, bedrooms: 2,
    #                       price: 1000).valid?).to be_falsey
    # end
    # it 'should reject entries without an address' do
    #   expect(Property.new(address: '100 1st Ave', bathrooms: nil, bedrooms: 2,
    #                       price: 1000).valid?).to be_falsey
    # end
    # it 'should reject entries without a phone number' do
    #   expect(Property.new(address: '100 1st Ave', bathrooms: 1, bedrooms: 2,
    #                       price: nil).valid?).to be_falsey
    # end
  end
end
