class User::TestsController < ApplicationController
  layout "user/application"
  before_action :authenticate_user! , except: [:index, :show]

  def index
    @tests = Test.public_test
  end
end
