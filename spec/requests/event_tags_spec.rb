require 'rails_helper'

RSpec.describe "EventTags", type: :request do
  describe "GET /event_tags" do
    it "works! (now write some real specs)" do
      get event_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
