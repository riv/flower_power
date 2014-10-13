class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_email
      t.string :phone_number
      t.string :pick_up_date

      t.timestamps
    end
  end
end
