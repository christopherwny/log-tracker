json.array!(@employees) do |employee|
  json.extract! employee, :id, :fName, :lName, :phone, :email, :notes
  json.url employee_url(employee, format: :json)
end
