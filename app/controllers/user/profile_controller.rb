class User::ProfileController < ApplicationController
  layout "user/application"
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update]
  
  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
  end

  def update
    if @user.update user_params
      flash[:success] = "Successfully"
      render 'show'
    else
      flash[:success] = "Successfully"
      render 'edit'
    end
  end

  private 
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit :username
  end
end    