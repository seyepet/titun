json.extract! local_purchasing_order, :id, :amount, :name, :contragent, :currency, :date, :created_at, :updated_at
json.url local_purchasing_order_url(local_purchasing_order, format: :json)
