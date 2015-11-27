json.array!(@appoinments) do |appoinment|
  json.extract! appoinment, :id, :docter_id, :patient_id
  json.url appoinment_url(appoinment, format: :json)
end
