json.extract! marketplace, :id, :name, :price, :description, :vendor, :image_url, :number, :category_id, :created_at, :updated_at
json.url marketplace_url(marketplace, format: :json)
