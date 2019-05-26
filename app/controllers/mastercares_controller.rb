class MastercaresController < ApplicationController
  before_action :set_mastercare, only: [:show, :edit, :update, :destroy]

  # GET /mastercares
  # GET /mastercares.json
  def index
    @mastercares = Mastercare.all
  end

  # GET /mastercares/1
  # GET /mastercares/1.json
  def show
  end

  # GET /mastercares/new
  def new
    @mastercare = Mastercare.new
  end

  # GET /mastercares/1/edit
  def edit
  end

  # POST /mastercares
  # POST /mastercares.json
  def create
    @mastercare = Mastercare.new(mastercare_params)

    respond_to do |format|
      if @mastercare.save
        format.html { redirect_to @mastercare, notice: 'Mastercare was successfully created.' }
        format.json { render :show, status: :created, location: @mastercare }
      else
        format.html { render :new }
        format.json { render json: @mastercare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mastercares/1
  # PATCH/PUT /mastercares/1.json
  def update
    respond_to do |format|
      if @mastercare.update(mastercare_params)
        format.html { redirect_to @mastercare, notice: 'Mastercare was successfully updated.' }
        format.json { render :show, status: :ok, location: @mastercare }
      else
        format.html { render :edit }
        format.json { render json: @mastercare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mastercares/1
  # DELETE /mastercares/1.json
  def destroy
    @mastercare.destroy
    respond_to do |format|
      format.html { redirect_to mastercares_url, notice: 'Mastercare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mastercare
      @mastercare = Mastercare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mastercare_params
      params.require(:mastercare).permit(:name, :courses, :price, :description, :image_url, :category_id)
    end
end
