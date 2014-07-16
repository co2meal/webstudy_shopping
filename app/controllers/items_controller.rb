class ItemsController < ApplicationController
  def index
    @items = Item.joins(:orders).group("items.id").order("orders.id DESC")
  end

  def show
    @item = Item.find(params[:id])
  end
end
