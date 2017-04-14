json.extract! video, :id, :title, :description, :file, :length, :order, :created_at, :updated_at
json.url video_url(video, format: :json)