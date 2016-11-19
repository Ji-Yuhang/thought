require 'grape'
class SupermemoV1API <  Grape::API
  format :json

  desc '自动跳转单词'
  params do
    requires :word, type: String, desc:{'word': '单词'}
    requires :user, type: String, desc:{'user': '用户'}
  end
  post 'goto' do
    word = params[:word]
    user = params[:user]
    ap word
    ap user
    ap params
    data = {
      type: "supermemo",
      user: user,
      word: word 
    }
    MessageBus.publish "/channel/supermemo", data

    {
      status: 'ok',
      word: word
    }
  end

  
end
