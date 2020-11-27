class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home


    @items = Item.all.sample(3)

    @all_items = Item.all

    @markers = @all_items.geocoded.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: render_to_string(partial: "items/info_window", locals: { item: item })
      }
    end
  end


  def dashboard
  end

  def account
  end
end
