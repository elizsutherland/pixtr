class GroupMembershipsController < ApplicationController
  def create
    @membership = GroupMembership.new group_id: params[:group_id], member_id:current_user.id
    if @membership.save
      redirect_to groups_path
    end
  end
end
