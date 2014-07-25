class CreateItemLines < ActiveRecord::Migration
  def change
    create_table :item_lines do |t|
      t.references :order, index: true
      t.references :cart, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
