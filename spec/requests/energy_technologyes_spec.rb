require 'rails_helper'

RSpec.describe "EnergyTechnologyes", type: :request do
  describe "GET /energy_technologyes" do
    it "works! (now write some real specs)" do
      get energy_technologyes_path
      expect(response).to have_http_status(200)
    end
  end
end
