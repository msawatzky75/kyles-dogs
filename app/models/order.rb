class Order < ApplicationRecord
	belongs_to :customer
	has_many :order_items
	has :invoice

	validates :date, presence: true
end
