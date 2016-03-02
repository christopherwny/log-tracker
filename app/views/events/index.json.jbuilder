json.array!(@events) do |event|
  json.extract! event, :id, :date, :company, :responsibleParty, :issuer, :deficiency, :affectedArea, :eventSource, :status, :cost, :notes, :employee_id, :company_id
  json.url event_url(event, format: :json)
end
