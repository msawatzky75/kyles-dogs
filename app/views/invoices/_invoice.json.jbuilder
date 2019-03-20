json.extract! invoice, :id, :date, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
