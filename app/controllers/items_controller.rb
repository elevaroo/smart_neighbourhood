class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :delete]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    # @item = Item.new
  end

  def create
    # @item = Item.new(item_params)
    # @item.save
    # if @item.save
    #   redirect_to item_path(@item)
    # else
    #   render :new
    # end
  end

  def update

  end

  def delete

  end

  private

  def set_item
    @item = Item.find([:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :location)
  end


end
