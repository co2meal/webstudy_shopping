class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @item = Item.find(params[:item_id])
    @order = @item.orders.create(order_params)
    redirect_to thanks_orders_path
  end

  def thanks
  end

  private

    def order_params
      params.require(:order).permit(:buyer_name, :location)
    end
end
