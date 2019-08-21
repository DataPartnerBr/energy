class EnergyTechnologyesController < ApplicationController
  before_action :set_energy_technologye, only: [:show, :update, :destroy]

  # GET /energy_technologyes
  def index
    @energy_technologyes = EnergyTechnologye.all

    render json: @energy_technologyes
  end

  # GET /energy_technologyes/1
  def show
    render json: @energy_technologye
  end

  # POST /energy_technologyes
  def create
    @energy_technologye = EnergyTechnologye.new(energy_technologye_params)

    if @energy_technologye.save
      render json: @energy_technologye, status: :created, location: @energy_technologye
    else
      render json: @energy_technologye.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /energy_technologyes/1
  def update
    if @energy_technologye.update(energy_technologye_params)
      render json: @energy_technologye
    else
      render json: @energy_technologye.errors, status: :unprocessable_entity
    end
  end

  # DELETE /energy_technologyes/1
  def destroy
    @energy_technologye.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_energy_technologye
      @energy_technologye = EnergyTechnologye.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def energy_technologye_params
      params.require(:energy_technologye).permit(:name)
    end
end
