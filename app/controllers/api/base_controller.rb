class Api::BaseController < ApplicationController
    respond_to :json
    
    protected
    def current_user
        @user = User.find_by(session[:id])
        @user.present?
    end
    def authenticate_user!
        unless current_user
        # render status: :unauthorized
        redirect_to(:action => 'new', :controller => 'api/session')
        end
    end
end