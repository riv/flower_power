class DeletePriceFromFlowers2 < ActiveRecord::Migration
  def change
    remove_column :flowers, :price
    add_column :flowers, :sixcount, :integer
    add_column :flowers, :eightcount, :integer
  end
end
