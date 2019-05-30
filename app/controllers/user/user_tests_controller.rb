class User::UserTestsController < ApplicationController
  layout 'user/application'
  before_action :authenticate_user!


  def new
    @user_test = UserTest.new
    @user_test.user_answers.build
    @test = Test.find_by(id: params[:test]) 
  end

  def show
    @user_test = current_user.user_tests.find_by(id: params[:id]) 
    @user_answer = UserAnswer.find_by(id: params[:id]) 
  end

  def index
    @user_tests = current_user.user_tests
  end

  def create
    @user_test = UserTest.new user_test_params
    if @user_test.save
      flash[:success] = 'Successfully'
      render 'show'
    else
      flash[:danger] = 'Error'
      head :no_content
    end
  end

  private 
  def user_test_params
    params.require(:user_test).permit(:test_id, :user_id, 
      user_answers_attributes: [:question_id, :answer_id])
  end

end
