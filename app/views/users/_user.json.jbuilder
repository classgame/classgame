json.extract! user, :id, :name, :email, :telephone, :cpf, :birthday, :created_at, :updated_at
json.url user_url(user, format: :json)