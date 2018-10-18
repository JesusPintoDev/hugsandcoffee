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

  def new_acount
    @accounts = @my_profile.accounts.build
  end
  
  def update
    if @my_profile.update(my_profile_params)
      redirect_to my_profile_settings_path(current_user), notice: '¡Perfil actualizado satisfactoriamente!' 
    end
  end
  
  def accounts
    @accounts = Account.where(profile_id: current_user.id?)
  end

  def images
    @images = Image.where(profile_id: current_user.id)
  end
  
  def first_time
    @my_profile = Profile.create(user_id: current_user.id, fullname: "", role: "", bio: "")
    Multiplier.create(profile_id: current_user.id, a: 1, b: 2, c: 3, d: 5)
  end
  
  def define_user
    @user_email = current_user.email
    @user = current_user.email.split("@")[0].capitalize
    p '/////////////////////////////'
    p @my_profile
    p params
    p '/////////////////////////////'
  end
  
  private
  
  def set_my_profile
    @my_profile = Profile.find_by(user_id: current_user.id)
    unless @my_profile
      first_time()
    end 
    #@multiplier = @my_profile.multiplier
  end


  def validate_user_id_params_id!
   redirect_to profile_path(current_user) if params[:id].to_i != current_user.id
  end

  # Never trust parameters from the scary internet, only allow the white list through.

  def my_profile_params
    params.require(:profile).permit(:fullname, :role, :bio, :coffee_price, :monetary_symbol, :user_id, :avatar,
      multiplier_attributes: [:id, :a, :b, :c, :d],
      accounts_attributes: [:id, :entity, :email, :account_number, :rif_ci, :account_type],
      images_attributes: [:id, :url, :description,])
  end

end