class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date_start
      t.date :date_end
      t.references :user
      t.references :item
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
