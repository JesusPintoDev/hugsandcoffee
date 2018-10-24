class ProfilesController < ApplicationController
  before_action :set_profile

  def index
  end

  def show
    @profile = Profile.find(params[:id])
    @name = @profile.user.email
  end

  def hug
    @testimonial = Testimonial.new
    @name = @profile.user.email
  end

  def coffee
    @testimonial = Testimonial.new
    @name = @profile.user.email
  end

  def thanks
  end

  def reward
  end

  def create
    @testimonial = @profile.testimonials.build(testimonial_params)
    if @testimonial.save
      redirect_to profiles_thanks_path, notice: '¡Gracias por tu apoyo!' 
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id]) if params[:id]
  end

  def profile_params
  end

  def testimonial_params
    params.require(:testimonial).permit(:fullname, :role, :message, :appreciation, :quantity)
  end

end
