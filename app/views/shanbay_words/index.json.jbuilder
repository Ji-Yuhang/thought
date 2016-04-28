json.array!(@shanbay) do |event_time|
  json.extract! @shanbay,
                :_id,
                :en_definitions,
                :uk_audio,
                :cn_definition,
                :num_sense,
                :content_type,
                :definition,
                :en_definition,
                :content,
                :pron,
                :pronunciation,
                :audio,
                :us_audio,
                :word_id

  json.url shanaby_word_url(event_time, format: :json)
end
