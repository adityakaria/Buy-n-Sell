json.extract! product, :id, :title, :description, :cost, :condition, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)
