class Product < ApplicationRecord
	belongs_to :product_status_code
	belongs_to :product_category

	validates :name, :description, :price, :product_category, presence: true
end
