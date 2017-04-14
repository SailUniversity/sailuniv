json.extract! course, :id, :title, :price, :description, :noflabs, :created_at, :updated_at
json.url course_url(course, format: :json)