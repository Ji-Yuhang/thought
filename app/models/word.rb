class Word
  include Mongoid::Document
  include Mongoid::Timestamps

  field :word, type: String

  validates :word, presence: true
  validates :word, uniqueness: true

  has_one :shanbay
end
