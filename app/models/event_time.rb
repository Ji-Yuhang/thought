class EventTime
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :user
  belongs_to :event_type
  belongs_to :event_tag
  
  field :content, type: String
  field :begin_time, type: Time
  field :end_time, type: Time
  field :time_length, type: Integer
  field :time, type: Time, default: ->{ Time.now }
end
