class FactoryrecertifieddelllaptopsController < ApplicationController
  before_action :set_factoryrecertifieddelllaptop, only: [:show, :edit, :update, :destroy]

  # GET /factoryrecertifieddelllaptops
  # GET /factoryrecertifieddelllaptops.json
  def index
    @factoryrecertifieddelllaptops = Factoryrecertifieddelllaptop.all
  end

  # GET /factoryrecertifieddelllaptops/1
  # GET /factoryrecertifieddelllaptops/1.json
  def show
  end

  # GET /factoryrecertifieddelllaptops/new
  def new
    @factoryrecertifieddelllaptop = Factoryrecertifieddelllaptop.new
  end

  # GET /factoryrecertifieddelllaptops/1/edit
  def edit
  end

  # POST /factoryrecertifieddelllaptops
  # POST /factoryrecertifieddelllaptops.json
  def create
    @factoryrecertifieddelllaptop = Factoryrecertifieddelllaptop.new(factoryrecertifieddelllaptop_params)

    respond_to do |format|
      if @factoryrecertifieddelllaptop.save
        format.html { redirect_to @factoryrecertifieddelllaptop, notice: 'Factoryrecertifieddelllaptop was successfully created.' }
        format.json { render :show, status: :created, location: @factoryrecertifieddelllaptop }
      else
        format.html { render :new }
        format.json { render json: @factoryrecertifieddelllaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factoryrecertifieddelllaptops/1
  # PATCH/PUT /factoryrecertifieddelllaptops/1.json
  def update
    respond_to do |format|
      if @factoryrecertifieddelllaptop.update(factoryrecertifieddelllaptop_params)
        format.html { redirect_to @factoryrecertifieddelllaptop, notice: 'Factoryrecertifieddelllaptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @factoryrecertifieddelllaptop }
      else
        format.html { render :edit }
        format.json { render json: @factoryrecertifieddelllaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factoryrecertifieddelllaptops/1
  # DELETE /factoryrecertifieddelllaptops/1.json
  def destroy
    @factoryrecertifieddelllaptop.destroy
    respond_to do |format|
      format.html { redirect_to factoryrecertifieddelllaptops_url, notice: 'Factoryrecertifieddelllaptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factoryrecertifieddelllaptop
      @factoryrecertifieddelllaptop = Factoryrecertifieddelllaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factoryrecertifieddelllaptop_params
      params.require(:factoryrecertifieddelllaptop).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
