class TonycyclesController < ApplicationController
  before_action :set_tonycycle, only: [:show, :edit, :update, :destroy]

  # GET /tonycycles
  # GET /tonycycles.json
  def index
    @tonycycles = Tonycycle.all
  end

  # GET /tonycycles/1
  # GET /tonycycles/1.json
  def show
  end

  # GET /tonycycles/new
  def new
    @tonycycle = Tonycycle.new
  end

  # GET /tonycycles/1/edit
  def edit
  end

  # POST /tonycycles
  # POST /tonycycles.json
  def create
    @tonycycle = Tonycycle.new(tonycycle_params)

    respond_to do |format|
      if @tonycycle.save
        format.html { redirect_to @tonycycle, notice: 'Tonycycle was successfully created.' }
        format.json { render :show, status: :created, location: @tonycycle }
      else
        format.html { render :new }
        format.json { render json: @tonycycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tonycycles/1
  # PATCH/PUT /tonycycles/1.json
  def update
    respond_to do |format|
      if @tonycycle.update(tonycycle_params)
        format.html { redirect_to @tonycycle, notice: 'Tonycycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @tonycycle }
      else
        format.html { render :edit }
        format.json { render json: @tonycycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tonycycles/1
  # DELETE /tonycycles/1.json
  def destroy
    @tonycycle.destroy
    respond_to do |format|
      format.html { redirect_to tonycycles_url, notice: 'Tonycycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tonycycle
      @tonycycle = Tonycycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tonycycle_params
      params.require(:tonycycle).permit(:brand, :model, :year, :gear_type, :number_of_wheels, :price, :purchased, :image_url, :category_id)
    end
end
