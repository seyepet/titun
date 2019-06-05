class HprrlaptopsController < ApplicationController
  before_action :set_hprrlaptop, only: [:show, :edit, :update, :destroy]

  # GET /hprrlaptops
  # GET /hprrlaptops.json
  def index
    @hprrlaptops = Hprrlaptop.all
  end

  # GET /hprrlaptops/1
  # GET /hprrlaptops/1.json
  def show
  end

  # GET /hprrlaptops/new
  def new
    @hprrlaptop = Hprrlaptop.new
  end

  # GET /hprrlaptops/1/edit
  def edit
  end

  # POST /hprrlaptops
  # POST /hprrlaptops.json
  def create
    @hprrlaptop = Hprrlaptop.new(hprrlaptop_params)

    respond_to do |format|
      if @hprrlaptop.save
        format.html { redirect_to @hprrlaptop, notice: 'Hprrlaptop was successfully created.' }
        format.json { render :show, status: :created, location: @hprrlaptop }
      else
        format.html { render :new }
        format.json { render json: @hprrlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hprrlaptops/1
  # PATCH/PUT /hprrlaptops/1.json
  def update
    respond_to do |format|
      if @hprrlaptop.update(hprrlaptop_params)
        format.html { redirect_to @hprrlaptop, notice: 'Hprrlaptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @hprrlaptop }
      else
        format.html { render :edit }
        format.json { render json: @hprrlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hprrlaptops/1
  # DELETE /hprrlaptops/1.json
  def destroy
    @hprrlaptop.destroy
    respond_to do |format|
      format.html { redirect_to hprrlaptops_url, notice: 'Hprrlaptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hprrlaptop
      @hprrlaptop = Hprrlaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hprrlaptop_params
      params.require(:hprrlaptop).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
