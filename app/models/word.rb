class Word
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Sphinx

  field :word, type: String
  index({ word: 1 }, { unique: true, name: "word_index" })


  field :frequency, type: Integer

  validates :word, presence: true
  validates :word, uniqueness: true

  has_one :shanbay#, index: true
  has_many :collins#, index: true
  # search_index(:fields => [:word, :shanbay])


  def word_frequency
    #cs = Collin.find_by content: word
    cs = self.collins
    if cs.present?
      #cs.first.frequency
      cs.first.frequency
    else
      0
    end
  end

  def self.stem_word word
    if $spell.check? word
      stems = $spell.stem word
      stems.delete word if stems.size > 1
      guess = stems.max do | a, b |
        b.length <=> a.length
      end
      return guess
    end

  end

end
