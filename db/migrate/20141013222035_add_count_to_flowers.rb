class AddCountToFlowers < ActiveRecord::Migration
  def change
    add_column :flowers, :count, :integer
  end
end
