json.extract! course, :id, :title, :nivel, :workload, :active, :completed_edition, :created_at, :updated_at
json.url course_url(course, format: :json)