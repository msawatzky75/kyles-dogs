class OrderItem < ApplicationRecord
	has :product
	belongs_to :order

	validates :price, :quantity, presence: true
end
