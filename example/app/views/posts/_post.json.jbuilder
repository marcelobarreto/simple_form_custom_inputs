json.extract! post, :id, :title, :content, :active, :created_at, :updated_at
json.url post_url(post, format: :json)
