class Deletecount < ActiveRecord::Migration
  def change
    remove_column :flowers, :count
  end
end
