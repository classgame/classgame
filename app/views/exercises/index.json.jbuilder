json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :title, :nivel, :experience
  json.url exercise_url(exercise, format: :json)
end
