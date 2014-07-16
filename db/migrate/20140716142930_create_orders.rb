# coding: utf-8

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :buyer_name
      t.string :location
      t.string :status, default: "배송중"
      t.references :item, index: true

      t.timestamps
    end
  end
end
