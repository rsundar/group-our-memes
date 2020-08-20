json.extract! transaction, :id, :name, :about, :rating, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
