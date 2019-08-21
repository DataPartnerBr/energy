class HomeController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  # Public method
  def index
    render json: {msg: 'Api Funcionando!', status: 200}
  end


  def members_only
    render json: {
        data: {
            message: "Welcome #{current_user.name}",
            user: current_user
        }
    }, status: 200
  end
end