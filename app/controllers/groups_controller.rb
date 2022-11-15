class GroupsController < ApplicationController
  def index
    return unless current_user

    @user = current_user
    @groups = @user.groups.includes(:expenses)
  end

  def new
    @groups = Group.new
  end

  def show
    @group = Group.find(params[:id])
    @expenses = @group.expenses.order('created_at DESC')
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    render :new unless @group.save

    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
