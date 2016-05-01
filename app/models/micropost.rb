class Micropost
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
 
  field :content, type: String
  field :time, type: Time, default: ->{ Time.now }
  validates :content, presence: true
  
  paginates_per 10
end
