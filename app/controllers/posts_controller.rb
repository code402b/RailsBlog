class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user

    @post.create
    flash[:notice] = "Post Created" 
  end

end