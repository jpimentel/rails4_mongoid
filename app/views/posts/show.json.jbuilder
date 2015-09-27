json.extract! @post, :title, :body, :starred, :created_at, :updated_at
json.id @post.id.to_s
