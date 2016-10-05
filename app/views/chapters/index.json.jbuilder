json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :title, :position_content, :description, :experience
  json.url chapter_url(chapter, format: :json)
end
