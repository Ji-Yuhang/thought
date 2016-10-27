module ShanbayWordsHelper
  def word_frequency(word)
    return $frequency[word] || 0 #rand(0..5)
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

  def word_cn(word)
    return $shanbay[word] if $shanbay[word].present?
    begin
      w = Word.find_by word: word
      $shanbay[word] = w.shanbay.definition#.gsub( /\n/ , "<br/>")
      return $shanbay[word]
    rescue
      return nil
    end
  end
  
  def links_sentence(sentence)
    #words = sentence.gsub /\w+/
    #sentence.gsub /words/,
  end

end
