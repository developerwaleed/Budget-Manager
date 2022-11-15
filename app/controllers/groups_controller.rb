class GroupsController < ApplicationController
    def index
        return unless current_user
    
        @user = current_user
        @groups = @user.groups.includes(:spendings)
      end
    def new
        @groups =   Group.new
    end

    def show
        @group = Group.find(params[:id])
        @expenses = @group.expenses.order('created_at DESC')
      end
end
