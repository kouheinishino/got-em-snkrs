json.extract! item, :id, :商品名, :発売日, :タイプ, :コラボ, :created_at, :updated_at
json.url item_url(item, format: :json)
