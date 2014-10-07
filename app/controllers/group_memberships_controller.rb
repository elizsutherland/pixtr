class GroupMembershipsController < ApplicationController
  def create
    @membership = GroupMembership.new group_id: params[:group_id], member_id:current_user.id
    if @membership.save
      redirect_to groups_path
    end
  end

  def destroy
    membership = GroupMembership.find params[:id]
    membership.destroy
    redirect_to groups_path
  end
end
