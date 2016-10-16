json.extract! video, :id, :link, :title, :description, :experience, :created_at, :updated_at
json.url video_url(video, format: :json)