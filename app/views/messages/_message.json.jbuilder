json.extract! message, :id, :name, :phone, :email, :subject, :body, :created_at, :updated_at
json.url message_url(message, format: :json)
