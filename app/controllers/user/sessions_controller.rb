class User::SessionsController < Devise::SessionsController

  private
  def after_sign_in_path_for(resource)
    user_home_index_path
  end
end
