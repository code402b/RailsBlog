class CommentsController < ApplicationController

  def new
    @comment_post = Post.find(params[:post_id])
    @comment = @comment_post.comments.new
  end

  def create
    
    @comment = current_user.comments.new(params[:comment])
    @comment.post_id = params[:post_id]

    @comment.save

    flash[:notice] = "Comment added"

    redirect_to posts_path
  end

end
