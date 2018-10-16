class ProfilesController < ApplicationController
  before_action :set_profile

  def index
  end

  def show
    @name = User.find(params[:id]).email
  end

  def hug
  end

  def coffee
  end

  def thanks
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
  end
end
