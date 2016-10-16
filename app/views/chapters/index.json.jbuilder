json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :title, :description, :experience
  json.url chapter_url(chapter, format: :json)
end
