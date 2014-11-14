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
#  has_payed      :boolean
#  name           :string(255)
#  delivery       :boolean
#  total          :float
#  address        :string(255)
#  count          :integer
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
