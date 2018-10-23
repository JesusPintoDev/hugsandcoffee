class ProfilesController < ApplicationController
  before_action :set_profile

  def index
  end

  def show
  end

  def hug
    @testimonial = Testimonial.new
  end

  def coffee
    @testimonial = Testimonial.new
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
    @profile = Profile.find(params[:id])
    @name = @profile.user.email
  end

  def profile_params
  end

  def testimonial_params
    params.require(:testimonial).permit(:fullname, :role, :message, :appreciation, :quantity)
  end

end
