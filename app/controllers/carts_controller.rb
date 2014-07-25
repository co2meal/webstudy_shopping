class CartsController < ApplicationController
  before_action :authenticate_user!

  def show
    @total = 0
    current_user.cart.item_lines.each do |item_line|
      @total += item_line.item.price * item_line.quantity
    end
  end

  # def create
  #   @item_lines = current_user.cart.item_lines.create(item_line_params)
  #   redirect_to root_path
  # end

  # private

  #   def item_line_params
  #     params.require(:item_line).permit(:quantity, :item_id)
  #   end
end
