class Pokemon < ApplicationRecord
  has_one :booking

  validates :name, presence: true
  validates :level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :type, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :purchased, exclusion: [nil]
  validates :picture, presence: true
end
