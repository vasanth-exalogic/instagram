json.extract! pin, :id, :user_id, :caption, :likes, :created_at, :updated_at
json.url pin_url(pin, format: :json)
