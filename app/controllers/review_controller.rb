class ReviewController < ApplicationController
  def show
    $review_index ||= 0
    param_word = $collin1[$review_index]
    words = Word.where :word => param_word
    # words = Word.search(param_word)
    unless words.nil? or words.count <= 0
      @shanbay = words.first.shanbay
      @collins = words.first.collins

    else
      if $spell.check? param_word
        param_word = Word.stem_word param_word

        words = Word.where :word => param_word
        if words.present?
          @shanbay = words.first.shanbay
          @collins = words.first.collins
        else
          @shanbay = nil
          @suggests = $spell.suggest param_word
        end


      else
        @shanbay = nil
        @suggests = $spell.suggest param_word
      end
    end
    if @shanbay.present?
      @word = @shanbay.word
      @thesaurus = $thesaurus[param_word]
    end



  end

  def next
    $review_index += 1
    redirect_to action: "show"
  end

  def know
    $review_index += 1
    redirect_to action: "show"
  end

  def pending
    $review_index += 1
    #TODO: inerval 3
    #TODO: add index queue
    redirect_to action: "show"
  end
  def unknow
    $review_index += 1
    #TODO: inerval 2
    redirect_to action: "show"
  end

  def words
    i = rand(1000)
    @wills = $collin1[i..i+10]
  end
end
