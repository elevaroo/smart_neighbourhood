class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]
  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def set_booking
    @booking = Booking.find([:id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :user_id, :item_id)
  end

end
