class Pokemon < ApplicationRecord
  has_one :booking, dependent: :destroy

  # validates :name, presence: true
  # validates :level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validates :pokemon_type, presence: true
  # validates :description, presence: true
  # validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validates :picture, presence: true

  def can_be_booked?
    booking.blank?
  end

  def has_been_booked_by?(user)
    booking.user == user
  end
end
