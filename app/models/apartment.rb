class Apartment < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode
  belongs_to :owner
  validates :owner, presence: true
  def full_address
    address1 + ' ' + address2 + ', '+ city + ', ' + postal_code + ', '+ state + ', ' + country
  end
end
