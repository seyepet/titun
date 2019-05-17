class SolarworksController < ApplicationController
  before_action :set_solarwork, only: [:show, :edit, :update, :destroy]

  # GET /solarworks
  # GET /solarworks.json
  def index
    @solarworks = Solarwork.all
  end

  # GET /solarworks/1
  # GET /solarworks/1.json
  def show
  end

  # GET /solarworks/new
  def new
    @solarwork = Solarwork.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /solarworks/1/edit
  def edit
  end

  # POST /solarworks
  # POST /solarworks.json
  def create
    @solarwork = Solarwork.new(solarwork_params)

    respond_to do |format|
      if @solarwork.save
        format.html { redirect_to @solarwork, notice: 'Solarwork was successfully created.' }
        format.json { render :show, status: :created, location: @solarwork }
      else
        format.html { render :new }
        format.json { render json: @solarwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solarworks/1
  # PATCH/PUT /solarworks/1.json
  def update
    respond_to do |format|
      if @solarwork.update(solarwork_params)
        format.html { redirect_to @solarwork, notice: 'Solarwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @solarwork }
      else
        format.html { render :edit }
        format.json { render json: @solarwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solarworks/1
  # DELETE /solarworks/1.json
  def destroy
    @solarwork.destroy
    respond_to do |format|
      format.html { redirect_to solarworks_url, notice: 'Solarwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solarwork
      @solarwork = Solarwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solarwork_params
      params.require(:solarwork).permit(:name, :code, :description, :price, :image_url, :category_id)
    end
end
