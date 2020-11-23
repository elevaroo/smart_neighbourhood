class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :delete]

  def index
    @items = Item.all
  end

  def show
  end

  def new

  end

  def create

  end

  def update

  end

  def delete

  end

  private

  def set_item
    @item = Item.fing([:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :location)
  end


end
