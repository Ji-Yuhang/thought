require "rails_helper"

RSpec.describe EventTimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_times").to route_to("event_times#index")
    end

    it "routes to #new" do
      expect(:get => "/event_times/new").to route_to("event_times#new")
    end

    it "routes to #show" do
      expect(:get => "/event_times/1").to route_to("event_times#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_times/1/edit").to route_to("event_times#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_times").to route_to("event_times#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_times/1").to route_to("event_times#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_times/1").to route_to("event_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_times/1").to route_to("event_times#destroy", :id => "1")
    end

  end
end
