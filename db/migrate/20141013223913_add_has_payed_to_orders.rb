class AddHasPayedToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :has_payed, :boolean
  end
end
