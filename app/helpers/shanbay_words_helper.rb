module ShanbayWordsHelper
  def word_frequency(word)
    return $frequency[word]
    begin
      cs = Collin.find_by content: word
    rescue
      return 0
    end
    if cs.present?
      #cs.first.frequency
      cs.frequency
    else
      0
    end
  end
end
