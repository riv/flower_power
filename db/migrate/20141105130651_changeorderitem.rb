class Changeorderitem < ActiveRecord::Migration
  def change
    remove_column :order_items, :quantity
    add_column :order_items, :sixquantity, :integer
    add_column :order_items, :eightquantity, :integer
  end
end
