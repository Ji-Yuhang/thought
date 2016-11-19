require 'grape'
class ThoughtV1API < Grape::API
  content_type :json, 'application/json;charset=UTF-8'
  format :json
#  mount JydWithdrawV1API     =>  'jwithdraw'
  #mount JydBalanceOrderV1API =>  'jbalanceorder'
  #mount JydOrderStateUpdateV1API  =>  'jorderstate'
  #mount JydUserAdd                =>  'juseradd'

  #mount PhoenixWithdrawV1API =>  'pwithdraw'
  #mount PhoenixOrderStateUpdateV1API =>  'porderstate'
  #mount PhoenixBalanceOrderV1API     =>  'pbalanceorder'
  #mount PhoenixOrderRefundNoV1API     =>  'porderrefund'
  #mount TestV1API => 'test'
  mount SupermemoV1API => 'supermemo'

  add_swagger_documentation base_path: '/api/v1', hide_format: true
end
