json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :address
  json.url patient_url(patient, format: :json)
end
