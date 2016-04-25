json.array!(@event_tags) do |event_tag|
  json.extract! event_tag, :id, :tag_name
  json.url event_tag_url(event_tag, format: :json)
end
