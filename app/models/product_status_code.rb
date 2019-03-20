class ProductStatusCode < ApplicationRecord
	belongs_to :product

	validates :name, :description, presence: true
end
