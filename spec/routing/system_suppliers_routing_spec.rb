require "rails_helper"

RSpec.describe SystemSuppliersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/system_suppliers").to route_to("system_suppliers#index")
    end

    it "routes to #new" do
      expect(:get => "/system_suppliers/new").to route_to("system_suppliers#new")
    end

    it "routes to #show" do
      expect(:get => "/system_suppliers/1").to route_to("system_suppliers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/system_suppliers/1/edit").to route_to("system_suppliers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/system_suppliers").to route_to("system_suppliers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/system_suppliers/1").to route_to("system_suppliers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/system_suppliers/1").to route_to("system_suppliers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/system_suppliers/1").to route_to("system_suppliers#destroy", :id => "1")
    end

  end
end
