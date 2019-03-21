class OrderItem < ApplicationRecord
	has_one :product
	belongs_to :order

	validates :price, :quantity, presence: true
end
