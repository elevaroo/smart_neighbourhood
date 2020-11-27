class User < ApplicationRecord
  before_save :capitalize_names
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def capitalize_names
    self.first_name = first_name.camelcase
    self.last_name = last_name.camelcase
  end

  has_many :items
  has_many :bookings
  has_one_attached :photo
  has_many :bookings_as_owner, through: :items, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
end
