class ApplicationController < ActionController::API
        include ActionController::Serialization
        include DeviseTokenAuth::Concerns::SetUserByToken

        #before_action :authenticate_user!
end