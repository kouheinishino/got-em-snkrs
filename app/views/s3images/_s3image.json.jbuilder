json.extract! s3image, :id, :title, :file_name, :comment, :created_at, :updated_at
json.url s3image_url(s3image, format: :json)
