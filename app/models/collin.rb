class Collin
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Attributes::Dynamic

  belongs_to :word, index: true


  field :content
  index({ content: 1 }, { name: "content_index" })
  field :frequency 
  field :collinstype 
  field :num 
  field :st 
  field :cn 
  field :sentence 
  field :grammer 
  field :explain 
  field :usagenote 
  field :example 
end
