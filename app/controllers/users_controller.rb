class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end
end
