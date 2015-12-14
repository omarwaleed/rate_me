class Api::BaseController < ApplicationController
    respond_to :json
    
    protected
    def current_user
        @current_user ||= User.find_by(session[:id])
    end
    def authenticate_user!
        unless current_user?
        render status: :unauthorized
        end
    end
end