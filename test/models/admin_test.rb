# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
