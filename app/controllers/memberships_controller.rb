class MembershipsController < ApplicationController
  before_action :set_membership, only: %i[show update]

  def index
    @user = current_user
    # @communities = @user.communities.includes(:memberships)
    @community = Community.includes(:memberships).find(params[:community_id])

    # @membership = Membership.find(params[:id])
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def new
    @membership = Membership.new
    @user = current_user
    @community = Community.find(params[:id])
  end

  def create
    @community = Community.find(params[:id])
    @membership = Membership.new(community: @community, user: current_user, status: 'pending')
    if @membership.save
      redirect_to @community_memberships_path, notice: 'Application request submitted successfully.'
    else
      redirect_to @community_memberships_path, notice: 'Application request failed.'
    end
  end

  def update
    @membership = Membership.find(params[:id])
    if @membership.community.user == current_user
      @membership.update(status: params[:status])
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
end
