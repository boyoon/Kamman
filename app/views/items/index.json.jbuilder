json.array!(@items) do |item|
  json.extract! item, :id, :items, :description, :cost
  json.url item_url(item, format: :json)
end
