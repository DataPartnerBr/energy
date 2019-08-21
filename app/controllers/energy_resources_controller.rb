class EnergyResourcesController < ApplicationController
  before_action :set_energy_resource, only: [:show, :update, :destroy]

  # GET /energy_resources
  def index
    @energy_resources = EnergyResource.all

    render json: @energy_resources
  end

  # GET /energy_resources/1
  def show
    render json: @energy_resource
  end

  # POST /energy_resources
  def create
    @energy_resource = EnergyResource.new(energy_resource_params)

    if @energy_resource.save
      render json: @energy_resource, status: :created, location: @energy_resource
    else
      render json: @energy_resource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /energy_resources/1
  def update
    if @energy_resource.update(energy_resource_params)
      render json: @energy_resource
    else
      render json: @energy_resource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /energy_resources/1
  def destroy
    @energy_resource.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_energy_resource
      @energy_resource = EnergyResource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def energy_resource_params
      params.require(:energy_resource).permit(:name)
    end
end
