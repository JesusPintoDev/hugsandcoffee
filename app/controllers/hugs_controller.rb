class HugsController < ApplicationController
    before_action :set_profile, only: [:index, :new, :create]
  
    # GET /hugs 
    # GET /hugs.json
    #def index
    #  @hugs = Testimonial.all
    #end
  
    # GET /hugs/1
    # GET /hugs/1.json
    def show
    end
  
    # GET /hugs/new
    def new
      @hug = Testimonial.new
    end
  
    # GET /hugs/1/edit
    def edit
    end
  
    # POST /hugs
    # POST /hugs.json
    def create
      @hug = @profile.testimonials.build(hug_params)
      @hug[:appreciation] = false
      if @hug.save
        redirect_to profiles_path(@hug.profile_id), notice: '¡Cuenta añadida satisfactoriamente!' 
      end
    end
  
    # PATCH/PUT /hugs/1
    # PATCH/PUT /hugs/1.json
    def update
        if @hug.update(hug_params)
          redirect_to profiles_path(@hug.profile_id), notice: '¡Cuenta editada satisfactoriamente!'
        end
    end
  
    # DELETE /hugs/1
    # DELETE /hugs/1.json
    def destroy
      @hug.destroy
      respond_to do |format|
        format.html { redirect_to profiles_path(@hug.profile_id), notice: 'Cuenta eliminada satisfactoriamente.' }
      end
    end
  
    private

    def set_profile
      @profile = Profile.find(params[:id])
      @user_email = @profile.user.email
    end
      # Use callbacks to share common setup or constraints between actions.
      def set_hug
        @hug = Testimonial.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def hug_params
        params.require(:testimonial).permit(:fullname, :role, :message, :appreciation, :quantity)
      end
  end
  