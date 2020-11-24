class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]
  def show

  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.item_id = params[:item_id]
    if @booking.save!
      redirect_to dashboard_path
    else
      #display alert
    end
  end

  def edit

  end

  def update

  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = confirmed
    if @booking.save!
      redirect_to dashboard_path
    else
      #display alert
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = declined
    if @booking.save!
      redirect_to dashboard_path
    else
      #display alert
    end
  end

  private

  def set_booking
    @booking = Booking.find([:id])
  end

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :item_id)
  end

end
