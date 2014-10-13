# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  customer_email :string(255)
#  phone_number   :string(255)
#  pick_up_date   :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Order < ActiveRecord::Base
  has_many :order_items
  has_many :flowers, through: :order_items
end
