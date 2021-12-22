json.extract! contact, :id, :name, :email, :country, :created_at, :updated_at
json.url contact_url(contact, format: :json)
