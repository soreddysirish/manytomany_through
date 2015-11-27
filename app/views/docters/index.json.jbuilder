json.array!(@docters) do |docter|
  json.extract! docter, :id, :name, :address
  json.url docter_url(docter, format: :json)
end
