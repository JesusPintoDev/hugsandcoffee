class ProfilesController < ApplicationController
  before_action :set_profile

  def index
  end

  def show
    @name = User.find(params[:id]).email
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
  end
end
