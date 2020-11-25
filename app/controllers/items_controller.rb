class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_item, only: [:show, :edit, :update, :delete]

  def index
    @items = Item.all

     # the `geocoded` scope filters only items with coordinates (latitude & longitude)
    @markers = @items.geocoded.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { item: item })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def delete

  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :location, :photo)
  end


end
