class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :flower_id
      t.integer :quantity

      t.timestamps
    end
  end
end
