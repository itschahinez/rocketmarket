class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon

  # validates :user, uniqueness: { scope: :pokemon }
end
