class Booking < ApplicationRecord
  enum status: { pending: 0, confirmed: 1, declined: 2 }

  belongs_to :user
  belongs_to :object

  validates :start_date, presence: true
  validates :end_date, presence: true
end
