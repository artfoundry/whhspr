class DiscussionsController < ApplicationController

  def show
    @discussion = Discussion.find(params[:id])
  end

  def index
    @discussion = Discussion.new
    @discussions = Discussion.all
  end

  def create
    @discussion = Discussion.new(params[:discussion])
    @discussion.save
  # render text: @discussion
    redirect_to discussions_path
  end

end