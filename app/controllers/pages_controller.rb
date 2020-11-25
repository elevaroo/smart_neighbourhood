class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @items = Item.all.sample(3)
  end

  def dashboard
  end

  def account
  end
end
