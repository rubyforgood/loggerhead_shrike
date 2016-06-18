class UsersController < ApplicationController
  load_and_authorize_resource


  def index
    # @users = User.all
    @users = User.where("role" => "guest")
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
