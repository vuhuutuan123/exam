class User::ProfileController < ApplicationController
  layout "user/application"
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update, :show]
  
  def show
  end

  def edit
  end

  def update
    if @user.update user_params
      flash[:success] = "Successfully"
      render 'show'
    else
      flash[:warning] = "Error"
      render 'edit'
    end
  end

  private 
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end 
