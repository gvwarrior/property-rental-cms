require 'spec_helper'
require 'rails_helper'

describe 'Property Model' do
  describe 'validations' do
    it 'should accept entries that fulfill all validations' do
      expect(Property.new(address: '100 1st Ave', bathrooms: 1, bedrooms: 2,
                          price: 1000).valid?).to be_truthy
    end
    it 'should reject entries without an address' do
      expect(Property.new(address: nil, bathrooms: 1, bedrooms: 2,
                          price: 1000).valid?).to be_falsey
    end
    it 'should reject entries without bedrooms' do
      expect(Property.new(address: '100 1st Ave', bathrooms: nil, bedrooms: 2,
                          price: 1000).valid?).to be_falsey
    end
    it 'should reject entries without bathrooms' do
      expect(Property.new(address: '100 1st Ave', bathrooms: nil, bedrooms: 2,
                          price: 1000).valid?).to be_falsey
    end
    it 'should reject entries without a price' do
      expect(Property.new(address: '100 1st Ave', bathrooms: 1, bedrooms: 2,
                          price: nil).valid?).to be_falsey
    end
    it 'should reject entries with a non-integer number of bathrooms' do
      expect(Property.new(address: '100 1st Ave', bathrooms: '# of baths',
                          bedrooms: 2, price: 1000).valid?).to be_falsey
    end
    it 'should reject entries with a non-integer number of bedrooms' do
      expect(Property.new(address: '100 1st Ave', bathrooms: 1,
                          bedrooms: '# of beds', price: 1000).valid?).to be_falsey
    end
    it 'should reject entries if price is not a number' do
      expect(Property.new(address: '100 1st Ave', bathrooms: 1, bedrooms: 2,
                          price: 'Price').valid?).to be_falsey
    end
    it 'should reject entries if sqft is not a number' do
      expect(Property.new(address: '100 1st Ave', bathrooms: 1, bedrooms: 2,
                          price: 1000, sqft: 'ft').valid?).to be_falsey
    end
  end
end
