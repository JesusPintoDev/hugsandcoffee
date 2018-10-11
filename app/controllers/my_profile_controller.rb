class MyProfileController < ApplicationController
  before_action :authenticate_user!, :define_user
  
  def index
  end

  def settings
  end

  def images
  end

  def accounts
  end

  def define_user
    @user_email = current_user.email
    @user = current_user.email.split("@")[0].capitalize
  end

  private

  def authenticate_user
    redirect_to root_path if user_signed_in?
  end

end