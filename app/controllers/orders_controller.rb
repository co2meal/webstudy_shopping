class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def create
    @order = current_user.orders.create

    current_user.cart.item_lines.each do |item_line|
      item_line.cart = nil
      item_line.order = @order
      item_line.save
    end

    redirect_to thanks_orders_path
  end

  def thanks
  end
end
