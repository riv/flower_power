class AddCountToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :count, :integer
    remove_column :orders, :cocunt
  end
end
