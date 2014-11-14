class Addimage < ActiveRecord::Migration
  def change
    add_column :flowers, :imagelink, :string
  end
end
