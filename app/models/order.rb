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
#  total          :integer
#  address        :string(255)
#  cocunt         :integer
#

class Order < ActiveRecord::Base
  has_many :order_items
  has_many :flowers, through: :order_items

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d{3}-\d{3}-\d{4}\z/
  validates :customer_email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }
  validates :name, presence: true
  validates :delivery, absence: false
  validates :total, presence: true
end
