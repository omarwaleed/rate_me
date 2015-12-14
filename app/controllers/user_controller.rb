class UsersController < ApplicationController
    
    def new
    end
    
    def create
        
        respond_with @user = User.new()
    end
end