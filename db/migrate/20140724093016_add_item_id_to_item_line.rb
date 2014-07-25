class AddItemIdToItemLine < ActiveRecord::Migration
  def change
    add_column :item_lines, :item_id, :integer
  end
end
