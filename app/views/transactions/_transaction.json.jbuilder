json.extract! transaction, :id, :merchant, :note, :price, :transaction_date, :food, :gas, :transaction_type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
