class HprlaptopsController < ApplicationController
  before_action :set_hprlaptop, only: [:show, :edit, :update, :destroy]

  # GET /hprlaptops
  # GET /hprlaptops.json
  def index
    @hprlaptops = Hprlaptop.all
  end

  # GET /hprlaptops/1
  # GET /hprlaptops/1.json
  def show
  end

  # GET /hprlaptops/new
  def new
    @hprlaptop = Hprlaptop.new
  end

  # GET /hprlaptops/1/edit
  def edit
  end

  # POST /hprlaptops
  # POST /hprlaptops.json
  def create
    @hprlaptop = Hprlaptop.new(hprlaptop_params)

    respond_to do |format|
      if @hprlaptop.save
        format.html { redirect_to @hprlaptop, notice: 'Hprlaptop was successfully created.' }
        format.json { render :show, status: :created, location: @hprlaptop }
      else
        format.html { render :new }
        format.json { render json: @hprlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hprlaptops/1
  # PATCH/PUT /hprlaptops/1.json
  def update
    respond_to do |format|
      if @hprlaptop.update(hprlaptop_params)
        format.html { redirect_to @hprlaptop, notice: 'Hprlaptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @hprlaptop }
      else
        format.html { render :edit }
        format.json { render json: @hprlaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hprlaptops/1
  # DELETE /hprlaptops/1.json
  def destroy
    @hprlaptop.destroy
    respond_to do |format|
      format.html { redirect_to hprlaptops_url, notice: 'Hprlaptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def search  
  if params[:search].blank?  
    redirect_to(root_path, alert: "Empty field!") and return  
  else 
     @parameter = params[:search].downcase  
    @results = Hprlaptop.all.where("lower(name) LIKE :search", search: @parameter)  

  end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hprlaptop
      @hprlaptop = Hprlaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hprlaptop_params
      params.require(:hprlaptop).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
