class UsersController < ApplicationController

  before_action :user

  def new

  end

  private

  def user
    @user = current_user
    # @user = User.find(params[:user_id])
  end

end
