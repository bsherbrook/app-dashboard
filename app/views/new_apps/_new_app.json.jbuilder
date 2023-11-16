json.extract! new_app, :id, :name, :description, :color, :link, :position, :created_at, :updated_at
json.url new_app_url(new_app, format: :json)
