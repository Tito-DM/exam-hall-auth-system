json.extract! user, :id, :name, :surname, :gender, :username, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
