class MembershipsController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    current_user.memberships.create(community: @community, status: 'pending')
    redirect_to @community, notice: 'Application submitted successfully.'
  end

  def update
    @membership = Membership.find(params[:id])
    if @membership.community.user == current_user
      @membership.update(status: params[:status])
      flash[:notice] = 'Membership application updated successfully.'
    else
      flash[:alert] = 'You are not authorized to perform this action.'
    end
    redirect_to @membership.community
  end
end
