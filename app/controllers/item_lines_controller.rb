class ItemLinesController < ApplicationController
  before_action :authenticate_user!

  def create
    @item_lines = current_user.cart.item_lines.create(item_line_params)
    redirect_to root_path
  end

  private

    def item_line_params
      params.require(:item_line).permit(:quantity, :item_id)
    end
end
