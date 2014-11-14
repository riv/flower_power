class AddCountToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :cocunt, :integer
  end
end
