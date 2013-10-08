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
  end

end