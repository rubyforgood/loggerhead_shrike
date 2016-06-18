class UsersController < ApplicationController
  # before_action :check_admin, only: [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @resource = @user
  end

  private

  def check_admin
    current_user.is_admin?
  end
end
