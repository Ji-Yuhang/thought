require "rails_helper"

RSpec.describe EventTagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_tags").to route_to("event_tags#index")
    end

    it "routes to #new" do
      expect(:get => "/event_tags/new").to route_to("event_tags#new")
    end

    it "routes to #show" do
      expect(:get => "/event_tags/1").to route_to("event_tags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_tags/1/edit").to route_to("event_tags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_tags").to route_to("event_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_tags/1").to route_to("event_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_tags/1").to route_to("event_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_tags/1").to route_to("event_tags#destroy", :id => "1")
    end

  end
end
