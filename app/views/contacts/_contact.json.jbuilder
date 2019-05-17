json.extract! contact, :id, :first_name, :last_name, :email_address, :phone_number, :body, :state, :created_at, :updated_at
json.url contact_url(contact, format: :json)
