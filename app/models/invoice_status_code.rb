class InvoiceStatusCode < ApplicationRecord
	belongs_to :invoice

	validates :name, :description, presence: true
end
