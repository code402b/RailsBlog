class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new

  end

  def create
    params[:selected]="none"
    params[:post][:user_id] = session[:user_id]
    
    @post = Post.create(params[:post])

    flash[:notice] = "Post Created"

    redirect_to posts_path
  end

end