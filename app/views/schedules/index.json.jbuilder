json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :date, :pet, :customer, :reminder, :reason_for_visit
  json.url schedule_url(schedule, format: :json)
end
