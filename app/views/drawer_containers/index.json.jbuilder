json.array!(@drawer_containers) do |drawer_container|
  json.extract! drawer_container, :id, :drawers
  json.url drawer_container_url(drawer_container, format: :json)
end
