json.extract! text, :id, :title, :text, :description, :experience, :created_at, :updated_at
json.url text_url(text, format: :json)