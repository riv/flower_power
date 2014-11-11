# == Schema Information
#
# Table name: order_items
#
#  id            :integer          not null, primary key
#  flower_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  order_id      :integer
#  sixquantity   :integer
#  eightquantity :integer
#

require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
