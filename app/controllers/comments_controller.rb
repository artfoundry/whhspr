class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to discussion_path(@comment.discussion)
  end

end