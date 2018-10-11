class MyProfileController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user.email.split("@")[0].capitalize
  end

  def settings
  end

  def images
  end

  def accounts
  end

  private

  def authenticate_user
    redirect_to root_path if user_signed_in?
  end

end