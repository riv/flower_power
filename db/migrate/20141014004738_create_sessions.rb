class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :admin_id
      t.string :ip_address
      t.string :session_code

      t.timestamps
    end
  end
end
