class IntelxphonesController < ApplicationController
  before_action :set_intelxphone, only: [:show, :edit, :update, :destroy]

  # GET /intelxphones
  # GET /intelxphones.json
  def index
    @intelxphones = Intelxphone.all
  end

  # GET /intelxphones/1
  # GET /intelxphones/1.json
  def show
  end

  # GET /intelxphones/new
  def new
    @intelxphone = Intelxphone.new
  end

  # GET /intelxphones/1/edit
  def edit
  end

  # POST /intelxphones
  # POST /intelxphones.json
  def create
    @intelxphone = Intelxphone.new(intelxphone_params)

    respond_to do |format|
      if @intelxphone.save
        format.html { redirect_to @intelxphone, notice: 'Intelxphone was successfully created.' }
        format.json { render :show, status: :created, location: @intelxphone }
      else
        format.html { render :new }
        format.json { render json: @intelxphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intelxphones/1
  # PATCH/PUT /intelxphones/1.json
  def update
    respond_to do |format|
      if @intelxphone.update(intelxphone_params)
        format.html { redirect_to @intelxphone, notice: 'Intelxphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @intelxphone }
      else
        format.html { render :edit }
        format.json { render json: @intelxphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intelxphones/1
  # DELETE /intelxphones/1.json
  def destroy
    @intelxphone.destroy
    respond_to do |format|
      format.html { redirect_to intelxphones_url, notice: 'Intelxphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intelxphone
      @intelxphone = Intelxphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intelxphone_params
      params.require(:intelxphone).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
