class Business < ActiveRecord::Base
  before_create :only_one_row
  validates :name, :phoneNumber, :address, :logoUrl, presence: true

  private
  def only_one_row
    raise 'You can create only one row of this table' if Business.count > 1
  end
end
