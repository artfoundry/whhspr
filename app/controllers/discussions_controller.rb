class DiscussionsController < ApplicationController

  def new
    @discussion = Discussion.new
  end

  def show
    @discussion = Discussion.find(params[:id])
  end

end