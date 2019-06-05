class FactoryrecertifiedacerlaptopsController < ApplicationController
  before_action :set_factoryrecertifiedacerlaptop, only: [:show, :edit, :update, :destroy]

  # GET /factoryrecertifiedacerlaptops
  # GET /factoryrecertifiedacerlaptops.json
  def index
    @factoryrecertifiedacerlaptops = Factoryrecertifiedacerlaptop.all
  end

  # GET /factoryrecertifiedacerlaptops/1
  # GET /factoryrecertifiedacerlaptops/1.json
  def show
  end

  # GET /factoryrecertifiedacerlaptops/new
  def new
    @factoryrecertifiedacerlaptop = Factoryrecertifiedacerlaptop.new
  end

  # GET /factoryrecertifiedacerlaptops/1/edit
  def edit
  end

  # POST /factoryrecertifiedacerlaptops
  # POST /factoryrecertifiedacerlaptops.json
  def create
    @factoryrecertifiedacerlaptop = Factoryrecertifiedacerlaptop.new(factoryrecertifiedacerlaptop_params)

    respond_to do |format|
      if @factoryrecertifiedacerlaptop.save
        format.html { redirect_to @factoryrecertifiedacerlaptop, notice: 'Factoryrecertifiedacerlaptop was successfully created.' }
        format.json { render :show, status: :created, location: @factoryrecertifiedacerlaptop }
      else
        format.html { render :new }
        format.json { render json: @factoryrecertifiedacerlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factoryrecertifiedacerlaptops/1
  # PATCH/PUT /factoryrecertifiedacerlaptops/1.json
  def update
    respond_to do |format|
      if @factoryrecertifiedacerlaptop.update(factoryrecertifiedacerlaptop_params)
        format.html { redirect_to @factoryrecertifiedacerlaptop, notice: 'Factoryrecertifiedacerlaptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @factoryrecertifiedacerlaptop }
      else
        format.html { render :edit }
        format.json { render json: @factoryrecertifiedacerlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factoryrecertifiedacerlaptops/1
  # DELETE /factoryrecertifiedacerlaptops/1.json
  def destroy
    @factoryrecertifiedacerlaptop.destroy
    respond_to do |format|
      format.html { redirect_to factoryrecertifiedacerlaptops_url, notice: 'Factoryrecertifiedacerlaptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factoryrecertifiedacerlaptop
      @factoryrecertifiedacerlaptop = Factoryrecertifiedacerlaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factoryrecertifiedacerlaptop_params
      params.require(:factoryrecertifiedacerlaptop).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
