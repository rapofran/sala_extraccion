json.array!(@waxes) do |wax|
  json.extract! wax, :id, :weight
  json.url wax_url(wax, format: :json)
end
