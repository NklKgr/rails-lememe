class CommunitiesController < ApplicationController
  before_action :set_community, only: [:show]

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @membership = current_user.memberships.where(community: @community).first

    if !@membership
      @membership = Membership.new
    end
    @memes = @community.memes
    @challenge = Challenge.new
    @challenges = @community.challenges.where(active: false).order(created_at: :desc)
    @challenge_current = @community.challenges.where(active: true)
  end

  def new
    @community = Community.new
    @user = current_user
  end

  def create
    @community = Community.new(community_params)
    @community.user = current_user
    if @community.save
      redirect_to community_path(@community)
    else
      render :new
    end
  end

  private

  def community_params
    params.require(:community).permit(:name, :description)
  end

  def set_community
    @community = Community.find(params[:id])
  end
end
