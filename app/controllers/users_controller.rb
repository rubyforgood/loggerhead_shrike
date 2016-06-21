class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @title = 'All Users'
    @users = User.all
  end

  def guests
    @title = 'Pending Approval'
    @users = User.where('role' => 'guest')
    render 'index'
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @resource = @user
  end

  def update
    @user = User.find(params[:id])
    redirect_to users_path, alert: 'Success!' if @user.update_attributes(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :phone, :role)
  end
end
