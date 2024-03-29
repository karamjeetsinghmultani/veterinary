json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :zip, :school, :years_in_practice
  json.url doctor_url(doctor, format: :json)
end
