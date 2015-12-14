class Api::SessionController < Api::BaseController
    
    
    def create
        @user = User.find_by(:username => params[:new_session][:username], :password => params[:new_session][:password])
        
        if @user.present?
            redirect_to(:action => 'index', :controller => 'api/post')
        else
            flash[:notice] = "no user exist"
            redirect_to sign_in_path
        end
    end
end