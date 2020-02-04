class Property < ActiveRecord::Base
  validates :address, presence: true
  validates :bedrooms, numericality: { only_integer: true }
  validates :bathrooms, numericality: { only_integer: true }
  validates :price, numericality: true
  validates :sqft, numericality: { allow_blank: true }
end
