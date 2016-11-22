json.array!(@content) do |content|
  json.extract! content, :id, :created_at
end