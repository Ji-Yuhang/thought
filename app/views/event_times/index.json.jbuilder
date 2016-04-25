json.array!(@event_times) do |event_time|
  json.extract! event_time, :id, :content, :begin_time, :end_time, :time_length, :time
  json.url event_time_url(event_time, format: :json)
end
