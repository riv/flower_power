# == Schema Information
#
# Table name: sessions
#
#  id           :integer          not null, primary key
#  admin_id     :integer
#  ip_address   :string(255)
#  session_code :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Session < ActiveRecord::Base
end
