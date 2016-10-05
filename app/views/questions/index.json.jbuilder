json.array!(@questions) do |question|
  json.extract! question, :id, :description, :experience
  json.url question_url(question, format: :json)
end
