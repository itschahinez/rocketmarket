class PastOrder < ApplicationRecord
  has_many :bookings
  has_one :user, through: :booking
end
