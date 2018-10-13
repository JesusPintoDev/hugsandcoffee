class MyProfileController < ApplicationController
  before_action :validate_user_id_params_id!
  before_action :set_profile
  before_action :authenticate_user!, :define_user
  
  def index
  end

  def settings
  end

  def images
  end

  def accounts
  end

  def first_time
      @profile = Profile.new(user_id: current_user.id)
      @profile.save
  end
      
  def define_user
    @user_email = current_user.email
    @user = current_user.email.split("@")[0].capitalize
  end

  private

  def set_profile
    @profile = Profile.find_by(user_id: current_user.id)
    unless @profile
      first_time()
    end 
  end


  def validate_user_id_params_id!
   redirect_to my_profile_path(current_user) if params[:format].to_i != current_user.id
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def my_profile_params
    params.permit(:format)
  end

end