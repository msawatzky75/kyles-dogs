class Invoice < ApplicationRecord
	belongs_to :order
	has_many :payments
	has :invoice_status_code

	validates :date, presence: true
end
