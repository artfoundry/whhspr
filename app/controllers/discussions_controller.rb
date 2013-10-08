class DiscussionsController < ApplicationController

  def show
    @discussion = Discussion.find(params[:id])
    @comment = Comment.new
  end

  def index
    @discussion = Discussion.new
    @discussions = Discussion.all
  end

  def create
    @discussion = Discussion.new(params[:discussion])
    @discussion.save
    redirect_to discussions_path
  end

end