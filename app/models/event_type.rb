class EventType
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
  
  field :type_name, type: String
end
