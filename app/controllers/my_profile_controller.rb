class MyProfileController < ApplicationController
  before_action :validate_user_id_params_id!
  before_action :set_my_profile
  before_action :authenticate_user!, :define_user
  
  def index
  end

  def settings
  end

  def images
  end

  def update
      if @my_profile.update(my_profile_params)
        redirect_to profile_path(current_user), notice: 'Profile was successfully updated.' 
    end
  end

  def accounts
  end

  def first_time
      @my_profile = Profile.new(user_id: current_user.id)
      @my_profile.save
      Multiplier.create(profile_id: current_user.id, a: 1, b: 2, c: 3, d: 5)
  end
      
  def define_user
    @user_email = current_user.email
    @user = current_user.email.split("@")[0].capitalize
  end

  private

  def set_my_profile
    @my_profile = Profile.find_by(user_id: current_user.id)
    unless @my_profile
      first_time()
    end 
    @multiplier = @my_profile.multiplier
  end


  def validate_user_id_params_id!
   redirect_to profile_path(current_user) if params[:id].to_i != current_user.id
  end

  # Never trust parameters from the scary internet, only allow the white list through.

  def my_profile_params
    params.require(:profile).permit(:fullname, :role, :bio, :coffee_price, :monetary_symbol, :user_id, multiplier_attributes: [:id, :a, :b, :c, :d])
  end

end