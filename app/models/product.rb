class Product < ApplicationRecord
	has_one :product_status_code

	validates :name, :description, :price, presence: true
end
