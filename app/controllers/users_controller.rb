class UsersController < ApplicationController
  before_action :check_admin

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
    true
  end
end
