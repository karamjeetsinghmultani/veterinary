json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :next_appointment, :reason_for_visit
  json.url appointment_url(appointment, format: :json)
end
