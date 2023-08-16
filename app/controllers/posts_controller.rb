class PostsController < ApplicationController
    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
end
