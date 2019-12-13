class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.memo = params[:comment][:memo]
        @comment.post_id = params[:post_id]
        @comment.save
        
        @post_id = params[:post_id]
        
        redirect_to request.referrer
    end
    
    def destroy
        Comment.find(params[:id]).destroy
        
        redirect_to request.referrer
    end
    
end
