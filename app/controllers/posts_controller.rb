class PostsController < ApplicationController
    
    def index 
    @posts = Post.all
    end 
    
    def show
        @posts = Post.find(params[:id])
    end 

    def new 
        @post = Post.new
    end 

    def create 
        @post = Post.new(post_params)
        if @post.save
        redirect_to posts_path, :notice => "your Post Was Saved "
        else
           render "new"
        end  
    end 

    def edit

    end 

    def update 

    end 

    def destroy

    end 


    def show
        @post = Post.find(params[:id])
    end
      
    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
