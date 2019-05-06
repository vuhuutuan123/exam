class User::HomeController < ApplicationController
  layout "user/application"
  before_action :authenticate_user!
  def index
  end
end
