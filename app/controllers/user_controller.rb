class UserController < ApplicationController
    
    def create
        @new_user = User.new(user_params)
        if @new_user.valid?
            puts '--------------'
            puts 'Valid'
            puts '--------------'
            @new_user.save
        else
            puts '--------------'
            puts 'NOT valid'
            puts '--------------'
            render 'new'
            return
        end
        session[:id] = @new_user.id
        redirect_to(:action => 'index', :controller => 'api/post')
        
        # respond_with @user = User.new()
    end
    
protected

    def user_params
        params.require(:user).permit(:username, :password, :email, :gender, :date_of_birth)
    end

end