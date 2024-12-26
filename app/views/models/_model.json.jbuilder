json.extract! model, :id, :brand, :model, :price, :created_at, :updated_at
json.url model_url(model, format: :json)
