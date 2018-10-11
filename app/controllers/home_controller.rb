class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
  end

  private

  def authenticate_user!
    redirect_to my_profile_path if user_signed_in?
  end

end