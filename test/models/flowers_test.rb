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

require 'test_helper'

class FlowersTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
