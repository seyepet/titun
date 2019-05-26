json.extract! mastercare, :id, :name, :courses, :price, :description, :image_url, :category_id, :created_at, :updated_at
json.url mastercare_url(mastercare, format: :json)
