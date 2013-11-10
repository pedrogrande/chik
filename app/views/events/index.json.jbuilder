json.array!(@events) do |event|
  json.extract! event, :title, :date, :desciption, :location, :suburb, :postcode, :link, :cost
  json.url event_url(event, format: :json)
end
