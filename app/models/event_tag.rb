class EventTag
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
  
  field :tag_name, type: String
end
