json.extract! school, :id, :name, :courses, :price, :description, :image_url, :category_id, :created_at, :updated_at
json.url school_url(school, format: :json)
