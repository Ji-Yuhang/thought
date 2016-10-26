class ShanbayWordsController < ApplicationController
  skip_before_action :authenticate_user!
  def index

  end

  def show
    unless params[:shanbay_words].nil?
      param_word = params[:shanbay_words][:word]
    else
      param_word = params[:word]
    end
    ap param_word
    unless param_word.nil?
      param_word.gsub! /^\s*/, '' 
      param_word.gsub! /\s*$/, ''
      param_word.strip!
      param_word.downcase!
    end
    ap param_word
    words = Word.where :word => param_word
    # words = Word.search(param_word)
    unless words.nil? or words.count <= 0
      @shanbay = words.first.shanbay
      @collins = words.first.collins

    else
      if $spell.check? param_word
        stems = $spell.stem param_word
        stems.delete param_word
        param_word = stems.first

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

  def search
    # redirect_to :action => :show
    # debugger
    unless params[:shanbay_words].nil?
      param_word = params[:shanbay_words][:word]
    else
      param_word = params[:word]
    end
    ap param_word
    unless param_word.nil?
      param_word.gsub! /^\s*/, ''
      param_word.gsub! /\s*$/, ''
      param_word.strip!
      param_word.downcase!
    end
    
    ap param_word

    
    words = Word.where :word => param_word
    # words = Word.search(param_word)
    unless words.blank?
      @shanbay = words.first.shanbay
      @collins = words.first.collins
    else
      if $spell.check? param_word
        stems = $spell.stem param_word
        stems.delete param_word
        param_word = stems.first

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
    
    render 'show'
  end
end
