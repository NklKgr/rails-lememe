class MembershipsController < ApplicationController
  before_action :set_membership, only: %i[show update]

  def index
    @user = current_user
    @community = Community.includes(:memberships).find(params[:community_id])
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
    @community = Community.includes(:memberships).find(params[:community_id])
    @membership = @community.memberships.find(params[:id])
    if @membership.community.user == current_user
      @membership.update(membership_params)
      flash[:notice] = 'Membership application updated successfully.'
    else
      flash[:alert] = 'You are not authorized to perform this action.'
    end
      redirect_to @community_memberships_path
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
  end

  def membership_params
    params.require(:membership).permit(:status)
  end
end
