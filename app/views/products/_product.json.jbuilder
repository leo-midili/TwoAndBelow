json.extract! product, :id, :name, :description, :quantity, :for_sale, :available_on, :discontinued_on, :created_at, :updated_at
json.url product_url(product, format: :json)
