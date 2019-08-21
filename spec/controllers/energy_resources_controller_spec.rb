require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe EnergyResourcesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # EnergyResource. As you add validations to EnergyResource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EnergyResourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all energy_resources as @energy_resources" do
      energy_resource = EnergyResource.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:energy_resources)).to eq([energy_resource])
    end
  end

  describe "GET #show" do
    it "assigns the requested energy_resource as @energy_resource" do
      energy_resource = EnergyResource.create! valid_attributes
      get :show, params: {id: energy_resource.to_param}, session: valid_session
      expect(assigns(:energy_resource)).to eq(energy_resource)
    end
  end

  describe "GET #new" do
    it "assigns a new energy_resource as @energy_resource" do
      get :new, params: {}, session: valid_session
      expect(assigns(:energy_resource)).to be_a_new(EnergyResource)
    end
  end

  describe "GET #edit" do
    it "assigns the requested energy_resource as @energy_resource" do
      energy_resource = EnergyResource.create! valid_attributes
      get :edit, params: {id: energy_resource.to_param}, session: valid_session
      expect(assigns(:energy_resource)).to eq(energy_resource)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new EnergyResource" do
        expect {
          post :create, params: {energy_resource: valid_attributes}, session: valid_session
        }.to change(EnergyResource, :count).by(1)
      end

      it "assigns a newly created energy_resource as @energy_resource" do
        post :create, params: {energy_resource: valid_attributes}, session: valid_session
        expect(assigns(:energy_resource)).to be_a(EnergyResource)
        expect(assigns(:energy_resource)).to be_persisted
      end

      it "redirects to the created energy_resource" do
        post :create, params: {energy_resource: valid_attributes}, session: valid_session
        expect(response).to redirect_to(EnergyResource.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved energy_resource as @energy_resource" do
        post :create, params: {energy_resource: invalid_attributes}, session: valid_session
        expect(assigns(:energy_resource)).to be_a_new(EnergyResource)
      end

      it "re-renders the 'new' template" do
        post :create, params: {energy_resource: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested energy_resource" do
        energy_resource = EnergyResource.create! valid_attributes
        put :update, params: {id: energy_resource.to_param, energy_resource: new_attributes}, session: valid_session
        energy_resource.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested energy_resource as @energy_resource" do
        energy_resource = EnergyResource.create! valid_attributes
        put :update, params: {id: energy_resource.to_param, energy_resource: valid_attributes}, session: valid_session
        expect(assigns(:energy_resource)).to eq(energy_resource)
      end

      it "redirects to the energy_resource" do
        energy_resource = EnergyResource.create! valid_attributes
        put :update, params: {id: energy_resource.to_param, energy_resource: valid_attributes}, session: valid_session
        expect(response).to redirect_to(energy_resource)
      end
    end

    context "with invalid params" do
      it "assigns the energy_resource as @energy_resource" do
        energy_resource = EnergyResource.create! valid_attributes
        put :update, params: {id: energy_resource.to_param, energy_resource: invalid_attributes}, session: valid_session
        expect(assigns(:energy_resource)).to eq(energy_resource)
      end

      it "re-renders the 'edit' template" do
        energy_resource = EnergyResource.create! valid_attributes
        put :update, params: {id: energy_resource.to_param, energy_resource: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested energy_resource" do
      energy_resource = EnergyResource.create! valid_attributes
      expect {
        delete :destroy, params: {id: energy_resource.to_param}, session: valid_session
      }.to change(EnergyResource, :count).by(-1)
    end

    it "redirects to the energy_resources list" do
      energy_resource = EnergyResource.create! valid_attributes
      delete :destroy, params: {id: energy_resource.to_param}, session: valid_session
      expect(response).to redirect_to(energy_resources_url)
    end
  end

end
