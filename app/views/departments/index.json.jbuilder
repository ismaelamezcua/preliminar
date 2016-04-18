json.array!(@departments) do |department|
  json.extract! department, :id, :name, :arrival_time, :departure_time, :arrival_tolerance, :departure_tolerance, :working_hours, :lunch_start, :lunch_finish
  json.url department_url(department, format: :json)
end
