class SessionsController < Devise::SessionsController

  def new
    super
  end


  private
  def after_sign_in_path_for(resource)
    "/admins/home"
  end
end
