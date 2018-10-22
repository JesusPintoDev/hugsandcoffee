class CoffesController < ApplicationController
    before_action :set_profile, only: [:index, :new, :create]
  
    # GET /coffes 
    # GET /coffes.json
    #def index
    #  @hugs = Testimonial.all
    #end
  
    # GET /coffes/1
    # GET /coffes/1.json
    def show
    end
  
    # GET /coffes/new
    def new
        @hug = @profile.testimonials.build()
        @hug[:appreciation] = true
    end
  
    # GET /coffes/1/edit
    def edit
    end
  
    # POST /coffes
    # POST /coffes.json
    def create
      @coffe = @profile.testimonials.build(coffe_params)
      @coffe[:appreciation] = 1
      if @coffe.save
        redirect_to profiles_path(@coffe.profile_id), notice: '¡Cafes enviados satisfactoriamente!' 
      end
    end
  
    # PATCH/PUT /coffes/1
    # PATCH/PUT /coffes/1.json
    def update
        if @coffe.update(coffe_params)
          redirect_to profiles_path(@coffe.profile_id)
        end
    end
  
    # DELETE /coffes/1
    # DELETE /coffes/1.json
    def destroy
      @coffe.destroy
      respond_to do |format|
        format.html { redirect_to profiles_path(@coffe.profile_id) }
      end
    end
  
    private

    def set_profile
      @profile = Profile.find(params[:id])
      @user_email = @profile.user.email
    end
      # Use callbacks to share common setup or constraints between actions.
      def set_coffe
        @coffe = Testimonial.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def coffe_params
        params.require(:testimonial).permit(:fullname, :role, :message, :appreciation, :quantity)
      end
  end
  