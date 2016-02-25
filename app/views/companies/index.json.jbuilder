json.array!(@companies) do |company|
  json.extract! company, :id, :name, :notes
  json.url company_url(company, format: :json)
end
