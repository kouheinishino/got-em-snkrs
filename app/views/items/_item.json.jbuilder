json.extract! item, :id, :name, :price, :release_date, :category, :collaboration, :description, :image_path, :created_at, :updated_at
json.url item_url(item, format: :json)
