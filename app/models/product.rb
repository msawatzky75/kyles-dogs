class Product < ApplicationRecord
	has_one :product_status_code
	has_one :product_category

	validates :name, :description, :price, presence: true
end
