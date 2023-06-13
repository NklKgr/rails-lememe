class MembershipsController < ApplicationController
  before_action :set_membership, only: %i[show update]

  def index
    # raise
    @user = current_user
    @community = Community.includes(:memberships).find(params[:community_id])

    if @community.user != @user
      redirect_to memes_path
    end
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def new
    @membership = Membership.new
    @user = current_user
    @community = Community.includes(:memberships).find(params[:community_id])
  end

  def create
    @community = Community.includes(:memberships).find(params[:community_id])
    @membership = Membership.new(community: @community, user: current_user, status: 'pending')
    if @membership.save
      redirect_to community_path(@community), notice: 'Application request submitted successfully.'
    else
      redirect_to community_path(@community), notice: 'Application request failed.'
    end
  end

  def update
    # @community = Community.includes(:memberships).find(params[:community_id])
    @membership = Membership.find(params[:id])

    if params[:membership][:status] == "accepted"
      @membership.status = "approved"
      @membership.save
      flash[:notice] = 'Membership application updated successfully.'
    end

    if params[:membership][:status] == "rejected"
      @membership.status = "rejected"
      @membership.save
      flash[:notice] = 'Membership application updated successfully.'
    end
      redirect_to memberships_community_path(@community)
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
  end

  def membership_params
    params.require(:membership).permit(:status)
  end
end
