class ProfilesController < ApplicationController
  def index
  end

  def show
    @name = User.find(params[:id]).email
  end

  def set_profile
  end

  def profile_params
  end
end
