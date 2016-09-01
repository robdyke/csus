require "rails_helper"

RSpec.describe SusScoresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sus_scores").to route_to("sus_scores#index")
    end

    it "routes to #new" do
      expect(:get => "/sus_scores/new").to route_to("sus_scores#new")
    end

    it "routes to #show" do
      expect(:get => "/sus_scores/1").to route_to("sus_scores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sus_scores/1/edit").to route_to("sus_scores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sus_scores").to route_to("sus_scores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sus_scores/1").to route_to("sus_scores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sus_scores/1").to route_to("sus_scores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sus_scores/1").to route_to("sus_scores#destroy", :id => "1")
    end

  end
end
