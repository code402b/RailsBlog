class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  
    params[:comment][:post_id] = #post_id

    @comment = current_user.comments.create(params[:comment])
  end

end
