json.array!(@producers) do |producer|
  json.extract! producer, :id, :dni, :name, :last_name, :telephone, :address, :renapa
  json.url producer_url(producer, format: :json)
end
