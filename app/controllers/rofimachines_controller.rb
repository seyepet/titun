class RofimachinesController < ApplicationController
  before_action :set_rofimachine, only: [:show, :edit, :update, :destroy]

  # GET /rofimachines
  # GET /rofimachines.json
  def index
    @rofimachines = Rofimachine.all
  end

  # GET /rofimachines/1
  # GET /rofimachines/1.json
  def show
  end

  # GET /rofimachines/new
  def new
    @rofimachine = Rofimachine.new
  end

  # GET /rofimachines/1/edit
  def edit
  end

  # POST /rofimachines
  # POST /rofimachines.json
  def create
    @rofimachine = Rofimachine.new(rofimachine_params)

    respond_to do |format|
      if @rofimachine.save
        format.html { redirect_to @rofimachine, notice: 'Rofimachine was successfully created.' }
        format.json { render :show, status: :created, location: @rofimachine }
      else
        format.html { render :new }
        format.json { render json: @rofimachine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rofimachines/1
  # PATCH/PUT /rofimachines/1.json
  def update
    respond_to do |format|
      if @rofimachine.update(rofimachine_params)
        format.html { redirect_to @rofimachine, notice: 'Rofimachine was successfully updated.' }
        format.json { render :show, status: :ok, location: @rofimachine }
      else
        format.html { render :edit }
        format.json { render json: @rofimachine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rofimachines/1
  # DELETE /rofimachines/1.json
  def destroy
    @rofimachine.destroy
    respond_to do |format|
      format.html { redirect_to rofimachines_url, notice: 'Rofimachine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rofimachine
      @rofimachine = Rofimachine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rofimachine_params
      params.require(:rofimachine).permit(:name, :code, :description, :price, :image_url, :category_id)
    end
end
