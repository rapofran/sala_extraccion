json.array!(@barrels) do |barrel|
  json.extract! barrel, :id, :type, :net_weight, :tare
  json.url barrel_url(barrel, format: :json)
end
