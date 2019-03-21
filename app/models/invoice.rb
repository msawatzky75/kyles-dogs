class Invoice < ApplicationRecord
	belongs_to :order
	has_many :payments
	has_one :invoice_status_code

	validates :date, presence: true
end
