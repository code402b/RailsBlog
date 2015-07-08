class CommentsController < ApplicationController

  def new
    @comment = Comment.new

    params[:selected]="none"
    params[:request][:user_id] = session[:user_id]
    params[:request][:post_id] = #post_id
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    # @comment.post = 
  end

end
