require 'rails_helper'

RSpec.describe "EventTimes", type: :request do
  describe "GET /event_times" do
    it "works! (now write some real specs)" do
      get event_times_path
      expect(response).to have_http_status(200)
    end
  end
end
