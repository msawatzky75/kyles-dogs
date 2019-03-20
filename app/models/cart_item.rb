class CartItem < ApplicationRecord
	belongs_to :customer
	has :product
end
