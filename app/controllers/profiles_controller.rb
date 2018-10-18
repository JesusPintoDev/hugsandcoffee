class ProfilesController < ApplicationController
  before_action :set_profile

  def index
  end

  def show
  end

  def hug
  end

  def coffee
  end

  def thanks
  end

  def reward
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
    @name = @profile.user.email
  end

  def profile_params
  end
end
