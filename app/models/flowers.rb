# == Schema Information
#
# Table name: flowers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :integer
#  created_at :datetime
#  updated_at :datetime
#  count      :integer
#

class Flowers < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items
end
