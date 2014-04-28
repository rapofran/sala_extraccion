json.array!(@barrels_incomes) do |barrels_income|
  json.extract! barrels_income, :id, :nro_remit
  json.url barrels_income_url(barrels_income, format: :json)
end
