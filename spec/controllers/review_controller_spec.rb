require 'rails_helper'

RSpec.describe ReviewController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #next" do
    it "returns http success" do
      get :next
      expect(response).to have_http_status(:success)
    end
  end

end
