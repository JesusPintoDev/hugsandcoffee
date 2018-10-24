class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :patch, :update, :destroy]
  before_action :set_profile, only: [:index, :new, :create]
  protect_from_forgery

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @my_profile = current_user
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
    @my_profile = current_user
    @id = current_user.id
    @profile = Profile.find(current_user.id)
    validate_user!
  end

  # POST /images
  # POST /images.json
  def create
    @image = @profile.images.build(image_params)
    
    if @image.save
      redirect_to my_profile_images_path, notice: '¡Imagen creada exitosamente!' 
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    if @image.update(image_params)
      respond_to do |format|
        format.html { redirect_to my_profile_images_path(@image.profile_id), notice: '¡Imagen editada exitosamente!' }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to my_profile_images_path(@image.profile_id), notice: 'Imagen eliminada exitosamente.' }
    end
  end

  private

  def set_profile
    @user_email = current_user.email
    @profile = Profile.find(params[:id])
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
    # puts @images.inspect
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def image_params
    params.require(:image).permit(:url, :description, :show)
  end

  def validate_user!
    redirect_to profile_path(current_user) if @image.profile.user.id != current_user.id
  end
end
