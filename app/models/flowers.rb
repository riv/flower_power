# == Schema Information
#
# Table name: flowers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  sixcount   :integer
#  eightcount :integer
#  imagelink  :string(255)
#

class Flowers < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items
end
