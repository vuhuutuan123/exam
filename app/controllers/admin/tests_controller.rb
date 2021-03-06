class Admin::TestsController < ApplicationController
  layout "admin/application"
  before_action :authenticate_admin!
  before_action :set_test, only: [:edit, :update, :destroy]
  before_action :check_status, only: [:edit, :destroy]

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
    @test.questions.build.answers.build
  end

  def create
    @test = Test.new test_params
    if @test.save
      flash[:success] = 'Create successfully'
      redirect_to admin_tests_path
    else
      flash[:danger] = 'Error'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @test.update test_params
      flash[:success] = 'Edit successfully'
      redirect_to admin_tests_path
    else
      flash[:warning] = 'Error'
      render 'edit'
    end
  end

  def show
    @test = Test.find_by(id: params[:id])
    @questions = @test.questions
  end

  def destroy
    @test.destroy
    flash[:success] = 'Delete successfully'
    redirect_to admin_tests_path
  end

  private
  def test_params 
    params.require(:test).permit(:topic_id, :time, :status, 
      questions_attributes: [:content, :_destroy,
        answers_attributes: [:content, :_destroy]
      ]
    )
  end

  def set_test
    @test = Test.find(params[:id])
  end

  def check_status
    @test = Test.find(params[:id])
    unless @test.status
      flash[:warning] = "This is a public test. Can't edit or delete"
      redirect_to admin_tests_path
    end
  end
end
