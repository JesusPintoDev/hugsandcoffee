class ApplicationController < ActionController::Base
  def after_sign_up_path_for(resource)
    new_user_session_path # <- Path you want to redirect the user to after signup
  end
end
