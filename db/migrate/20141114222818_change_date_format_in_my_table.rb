class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :orders, :total, :float
  end

  def down
    change_column :orders, :total, :integer
  end
end
