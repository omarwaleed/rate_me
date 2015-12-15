class Api::PostController < Api::BaseController
    
    # before_action :authenticate_user!
    
    
    def index
        respond_with @posts = Post.all
    end
    
    def show
        respond_with @current_post = Post.find(params[:p_id])
    end
    
    def create
        
        @new_post = Post.new(:name => params[:name], :approved => false, :type => params[:type])
        
        if @new_post.valid?
            @new_post.save
        end
        
        redirect_to(:action => 'index')
    end
end