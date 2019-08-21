require "rails_helper"

RSpec.describe EnergyTechnologyesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/energy_technologyes").to route_to("energy_technologyes#index")
    end

    it "routes to #new" do
      expect(:get => "/energy_technologyes/new").to route_to("energy_technologyes#new")
    end

    it "routes to #show" do
      expect(:get => "/energy_technologyes/1").to route_to("energy_technologyes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/energy_technologyes/1/edit").to route_to("energy_technologyes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/energy_technologyes").to route_to("energy_technologyes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/energy_technologyes/1").to route_to("energy_technologyes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/energy_technologyes/1").to route_to("energy_technologyes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/energy_technologyes/1").to route_to("energy_technologyes#destroy", :id => "1")
    end

  end
end
