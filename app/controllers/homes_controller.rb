class HomesController < ApplicationController
  
  def index
    @posts = Post.all
    @comment = Comment.new
  end
  
  def create
    post = Post.new
    post.content = params[:content]
    post.save
    
    redirect_to "/homes/index"
  end
  
  def delete
    post = Post.find(params[:id])
    post.destroy
    
    redirect_to "/homes/index"
  end
end
