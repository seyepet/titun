class DslrcamerasController < ApplicationController
  before_action :set_dslrcamera, only: [:show, :edit, :update, :destroy]

  # GET /dslrcameras
  # GET /dslrcameras.json
  def index
    @dslrcameras = Dslrcamera.all
  end

  # GET /dslrcameras/1
  # GET /dslrcameras/1.json
  def show
  end

  # GET /dslrcameras/new
  def new
    @dslrcamera = Dslrcamera.new
  end

  # GET /dslrcameras/1/edit
  def edit
  end

  # POST /dslrcameras
  # POST /dslrcameras.json
  def create
    @dslrcamera = Dslrcamera.new(dslrcamera_params)

    respond_to do |format|
      if @dslrcamera.save
        format.html { redirect_to @dslrcamera, notice: 'Dslrcamera was successfully created.' }
        format.json { render :show, status: :created, location: @dslrcamera }
      else
        format.html { render :new }
        format.json { render json: @dslrcamera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dslrcameras/1
  # PATCH/PUT /dslrcameras/1.json
  def update
    respond_to do |format|
      if @dslrcamera.update(dslrcamera_params)
        format.html { redirect_to @dslrcamera, notice: 'Dslrcamera was successfully updated.' }
        format.json { render :show, status: :ok, location: @dslrcamera }
      else
        format.html { render :edit }
        format.json { render json: @dslrcamera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dslrcameras/1
  # DELETE /dslrcameras/1.json
  def destroy
    @dslrcamera.destroy
    respond_to do |format|
      format.html { redirect_to dslrcameras_url, notice: 'Dslrcamera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dslrcamera
      @dslrcamera = Dslrcamera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dslrcamera_params
      params.require(:dslrcamera).permit(:name, :model, :code, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
