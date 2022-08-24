class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
  # belongs_to :past_order

  validates :user, uniqueness: { scope: :pokemon }
end
