json.array!(@event2s) do |event2|
  json.extract! event2, :id, :name, :description, :event_date, :group_id
  json.url event2_url(event2, format: :json)
end
