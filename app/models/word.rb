class Word
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Sphinx

  field :word, type: String

  validates :word, presence: true
  validates :word, uniqueness: true

  has_one :shanbay
  # search_index(:fields => [:word, :shanbay])
end
