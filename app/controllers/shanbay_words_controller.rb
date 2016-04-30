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
    end
    ap param_word
    words = Word.where :word => param_word
    # words = Word.search(param_word)
    unless words.nil? or words.count <= 0
      @shanbay = words.first.shanbay
    else
      @shanbay = nil
    end


  end

  def search

  end
end
