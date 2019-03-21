class Customer < ApplicationRecord
	has_many :orders
	has_many :order_items

	validates :name, :email, presence: true
	validates_format_of :email, :with => Devise::email_regexp
end
