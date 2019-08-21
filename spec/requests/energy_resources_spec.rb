require 'rails_helper'

RSpec.describe "EnergyResources", type: :request do
  describe "GET /energy_resources" do
    it "works! (now write some real specs)" do
      get energy_resources_path
      expect(response).to have_http_status(200)
    end
  end
end
