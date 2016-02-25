json.array!(@people) do |person|
  json.extract! person, :id, :fName, :lName
  json.url person_url(person, format: :json)
end
