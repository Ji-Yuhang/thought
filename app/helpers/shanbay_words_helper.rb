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
    # replace word to html, <a title="cn">word</a>
    return "" if sentence.blank?
    s = sentence.clone
    s1 = ''
    index = 0
    li = 0
    ri = 0
    loop {

      li = s.index /\w/,index
      break if li.blank?
      ri = s.index /\W/,li
      break if ri.blank?
      word = s[li..ri-1]
      #puts "[#{li},#{ri}]   #{word}"

      lo = s[index..li-1]
      #puts lo
      s1 += lo if li != 0 
      if $frequency[word].present?
        origin_word = word
      else
        origin_word = Word.stem_word word 
      end
      cn = word_cn origin_word
      s1 += %Q{<a title="#{cn}" class="collins_frequency_#{word_frequency(origin_word)} my-tooltip-link tooltip-error" data-method="get" href="/shanbay_search?word=#{origin_word}">#{word}</a>}
      #puts s1


      index = ri
    }
    return s1
  end

end
