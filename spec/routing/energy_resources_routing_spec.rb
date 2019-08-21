require "rails_helper"

RSpec.describe EnergyResourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/energy_resources").to route_to("energy_resources#index")
    end

    it "routes to #new" do
      expect(:get => "/energy_resources/new").to route_to("energy_resources#new")
    end

    it "routes to #show" do
      expect(:get => "/energy_resources/1").to route_to("energy_resources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/energy_resources/1/edit").to route_to("energy_resources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/energy_resources").to route_to("energy_resources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/energy_resources/1").to route_to("energy_resources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/energy_resources/1").to route_to("energy_resources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/energy_resources/1").to route_to("energy_resources#destroy", :id => "1")
    end

  end
end
