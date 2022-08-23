class User < ApplicationRecord
  has_many :bookings
  has_many :pokemons, through: :booking
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, presence: true, uniqueness: true
  # validates :balance, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
