class InternetsecuritiesController < ApplicationController
  before_action :set_internetsecurity, only: [:show, :edit, :update, :destroy]

  # GET /internetsecurities
  # GET /internetsecurities.json
  def index
    @internetsecurities = Internetsecurity.all
  end

  # GET /internetsecurities/1
  # GET /internetsecurities/1.json
  def show
  end

  # GET /internetsecurities/new
  def new
    @internetsecurity = Internetsecurity.new
  end

  # GET /internetsecurities/1/edit
  def edit
  end

  # POST /internetsecurities
  # POST /internetsecurities.json
  def create
    @internetsecurity = Internetsecurity.new(internetsecurity_params)

    respond_to do |format|
      if @internetsecurity.save
        format.html { redirect_to @internetsecurity, notice: 'Internetsecurity was successfully created.' }
        format.json { render :show, status: :created, location: @internetsecurity }
      else
        format.html { render :new }
        format.json { render json: @internetsecurity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internetsecurities/1
  # PATCH/PUT /internetsecurities/1.json
  def update
    respond_to do |format|
      if @internetsecurity.update(internetsecurity_params)
        format.html { redirect_to @internetsecurity, notice: 'Internetsecurity was successfully updated.' }
        format.json { render :show, status: :ok, location: @internetsecurity }
      else
        format.html { render :edit }
        format.json { render json: @internetsecurity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internetsecurities/1
  # DELETE /internetsecurities/1.json
  def destroy
    @internetsecurity.destroy
    respond_to do |format|
      format.html { redirect_to internetsecurities_url, notice: 'Internetsecurity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internetsecurity
      @internetsecurity = Internetsecurity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internetsecurity_params
      params.require(:internetsecurity).permit(:name, :type, :user, :capacity, :about, :noofdevice, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
