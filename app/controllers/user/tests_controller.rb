class User::TestsController < ApplicationController
  layout "user/application"
  before_action :authenticate_user! , except: [:index, :show]

  def index
    @tests = Test.public
  end

  def show
    @test = Test.find_by(id: params[:id])
    @questions = @test.questions
  end

  private
  def test_params 
    params.require(:test).permit(:topic_id, :time, :status, 
      questions_attributes: [:content, :_destroy,
        answers_attributes: [:content, :_destroy]
      ]
    )
  end
end
