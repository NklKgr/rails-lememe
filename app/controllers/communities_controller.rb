class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def new
    @community = Community.new
    render :new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to @community, notice: 'Community successfully created.'
    else
      render :new
    end
  end

  private

  def community_params
    params.require(:community).permit(:name, :description)
  end
end
