class Admin::UserController < ApplicationController
  layout 'admin/application'
  before_action :authenticate_admin!
  def index
    @search = User.ransack(params[:q])
    @users = @search.result(distinct: true)
  end
end
