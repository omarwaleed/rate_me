class Api::SessionController < Api::BaseController
    
    
    def create
        if session[:id].present?
           @user = User.find(session[:id]) 
        else
            @user = User.find_by(:username => params[:new_session][:username], :password => params[:new_session][:password])
        end
        
        if @user.present?
            session[:id] = @user.id
            puts '--------------'
            puts 'user exists'
            puts '--------------'
            respond_with @user
            # redirect_to(:action => 'index', :controller => 'api/post')
            # redirect_to api_post_index_path
        else
            respond_with nil
            puts '--------------'
            puts 'user doesnt exists'
            puts '--------------'
            # flash[:notice] = "no user exist"
            # redirect_to(:action => 'new', :controller => 'api/session')
        end
    end
end