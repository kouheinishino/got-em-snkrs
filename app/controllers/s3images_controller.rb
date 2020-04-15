class S3imagesController < ApplicationController
  before_action :set_s3image, only: [:show, :edit, :update, :destroy]

  # GET /s3images
  # GET /s3images.json
  def index
    @s3images = S3image.all
  end

  # GET /s3images/1
  # GET /s3images/1.json
  def show
  end

  # GET /s3images/new
  def new
    @s3image = S3image.new
  end

  # GET /s3images/1/edit
  def edit
  end

  # POST /s3images
  # POST /s3images.json
  def create
    @s3image = S3image.new(s3image_params)

    respond_to do |format|
      if @s3image.save
        format.html { redirect_to @s3image, notice: 'S3image was successfully created.' }
        format.json { render :show, status: :created, location: @s3image }
      else
        format.html { render :new }
        format.json { render json: @s3image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s3images/1
  # PATCH/PUT /s3images/1.json
  def update
    respond_to do |format|
      if @s3image.update(s3image_params)
        format.html { redirect_to @s3image, notice: 'S3image was successfully updated.' }
        format.json { render :show, status: :ok, location: @s3image }
      else
        format.html { render :edit }
        format.json { render json: @s3image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s3images/1
  # DELETE /s3images/1.json
  def destroy
    @s3image.destroy
    respond_to do |format|
      format.html { redirect_to s3images_url, notice: 'S3image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s3image
      @s3image = S3image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def s3image_params
      params.require(:s3image).permit(:title, :file_name, :comment)
    end
end
