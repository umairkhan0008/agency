class PostsController < ApplicationController

    def index

    end

    def post
        @posts = Post.where(type: params[:type]) 
    end

    def marketing

    end


    def show
      @post = Post.find(params[:id])
    end
    
   

end