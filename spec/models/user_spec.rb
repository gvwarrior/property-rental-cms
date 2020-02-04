require 'spec_helper'
require 'rails_helper'

describe 'User Model' do
  describe 'validations' do
    it 'should accept entries that fulfill all validations' do
      expect(User.new(name: 'selt_2019_g11', email: 'selt@gmail.com', password: '123456789',
                          password_confirmation: '123456789').valid?).to be_truthy
    end
    it 'should reject entries without a name' do
      expect(User.new(name: nil, email: 'selt@gmail.com', password: '123456789',
                          password_confirmation: '123456789').valid?).to be_falsey
    end
    it 'should reject entries without an email' do
      expect(User.new(name: 'selt_2019_g11', email: nil, password: '123456789',
                          password_confirmation: '123456789').valid?).to be_falsey
    end
    it 'should reject entries without a password' do
      expect(User.new(name: 'selt_2019_g11', email: nil, password: nil,
                          password_confirmation: '123456789').valid?).to be_falsey
    end
    it 'should reject entries without a password_confirmation' do
      expect(User.new(name: 'selt_2019_g11', email: nil, password: '123456789',
                          password_confirmation: nil).valid?).to be_falsey
    end
    it 'should reject entries with an invalid name' do
      expect(User.new(name: '0123456789012345678901234567890123456789012345678901234567890',
                          email: 'selt@gmail.com', password: '123456789',
                          password_confirmation: '123456789').valid?).to be_falsey
    end
    it 'should reject entries with an invalid email' do
      expect(User.new(name: 'selt_2019_g11', email: '123.234$cc.com.gm', password: '123456789',
                          password_confirmation: '123456789').valid?).to be_falsey
    end
    it 'should reject entries if password_confirmation does not equal to password' do
      expect(User.new(name: 'selt_2019_g11', email: 'selt@gmail.com', password: '123456789',
                          password_confirmation: '987654321').valid?).to be_falsey
    end
    it 'should reject entries if password has less than 6 chracters' do
      expect(User.new(name: 'selt_2019_g11', email: 'selt@gmail.com', password: '123',
                          password_confirmation: '123').valid?).to be_falsey
    end
  end
end