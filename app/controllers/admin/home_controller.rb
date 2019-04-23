class Admin::HomeController < ApplicationController
  layout "admin/application"
  before_action :authenticate_admin!
  def index
  end
end
