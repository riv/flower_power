class AddCancelledToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cancelled, :boolean
  end
end
