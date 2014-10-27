json.array!(@products) do |product|
  json.extract! product, :id, :title, :url, :description, :picture_url, :deleted_at
  json.url product_url(product, format: :json)
end
