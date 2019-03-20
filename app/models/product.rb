class Product < ApplicationRecord
	has :product_status_code
	
	validates :name, :description, :price, presence: true
end
