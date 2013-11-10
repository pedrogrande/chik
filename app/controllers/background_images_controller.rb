class BackgroundImagesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_background_image, only: [:show, :edit, :update, :destroy]

  # GET /background_images
  # GET /background_images.json
  def index
    @background_images = BackgroundImage.all
  end

  # GET /background_images/1
  # GET /background_images/1.json
  def show
  end

  # GET /background_images/new
  def new
    @background_image = BackgroundImage.new
  end

  # GET /background_images/1/edit
  def edit
  end

  # POST /background_images
  # POST /background_images.json
  def create
    @background_image = BackgroundImage.new(background_image_params)

    respond_to do |format|
      if @background_image.save
        format.html { redirect_to admin_path, notice: 'Background image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @background_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @background_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /background_images/1
  # PATCH/PUT /background_images/1.json
  def update
    respond_to do |format|
      if @background_image.update(background_image_params)
        format.html { redirect_to admin_path, notice: 'Background image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @background_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /background_images/1
  # DELETE /background_images/1.json
  def destroy
    @background_image.destroy
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background_image
      @background_image = BackgroundImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_image_params
      params.require(:background_image).permit(:image, :priority)
    end
end
