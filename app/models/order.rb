class Order < ActiveRecord::Base
  belongs_to :user
  has_many :item_lines

  def price
    total = 0
    item_lines.each do |item_line|
      total += item_line.item.price * item_line.quantity
    end
    total
  end
end
