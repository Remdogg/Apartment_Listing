class Apartment < ActiveRecord::Base
  belongs_to :owner
  validates :owner, presence: true
end
