json.extract! project, :id, :title, :desc, :slug, :created_at, :updated_at
json.url project_url(project, format: :json)
