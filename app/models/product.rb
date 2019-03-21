class Product < ApplicationRecord
	belongs_to :product_status_code
	belongs_to :product_category

	validates :name, :description, :price, presence: true

	mount_uploader :image, ImageUploader
end
