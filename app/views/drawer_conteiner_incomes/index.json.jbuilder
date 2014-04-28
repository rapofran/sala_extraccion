json.array!(@drawer_conteiner_incomes) do |drawer_conteiner_income|
  json.extract! drawer_conteiner_income, :id, :nro_remit
  json.url drawer_conteiner_income_url(drawer_conteiner_income, format: :json)
end
