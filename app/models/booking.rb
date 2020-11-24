class Booking < ApplicationRecord
  enum status: { pending: 0, confirmed: 1, declined: 2 }

  belongs_to :user
  belongs_to :item

  validates :date_start, presence: true
  validates :date_end, presence: true
end
