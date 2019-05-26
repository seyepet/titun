class ThemastercaresController < ApplicationController
  before_action :set_themastercare, only: [:show, :edit, :update, :destroy]

  # GET /themastercares
  # GET /themastercares.json
  def index
    @themastercares = Themastercare.all
  end

  # GET /themastercares/1
  # GET /themastercares/1.json
  def show
  end

  # GET /themastercares/new
  def new
    @themastercare = Themastercare.new
  end

  # GET /themastercares/1/edit
  def edit
  end

  # POST /themastercares
  # POST /themastercares.json
  def create
    @themastercare = Themastercare.new(themastercare_params)

    respond_to do |format|
      if @themastercare.save
        format.html { redirect_to @themastercare, notice: 'Themastercare was successfully created.' }
        format.json { render :show, status: :created, location: @themastercare }
      else
        format.html { render :new }
        format.json { render json: @themastercare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /themastercares/1
  # PATCH/PUT /themastercares/1.json
  def update
    respond_to do |format|
      if @themastercare.update(themastercare_params)
        format.html { redirect_to @themastercare, notice: 'Themastercare was successfully updated.' }
        format.json { render :show, status: :ok, location: @themastercare }
      else
        format.html { render :edit }
        format.json { render json: @themastercare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themastercares/1
  # DELETE /themastercares/1.json
  def destroy
    @themastercare.destroy
    respond_to do |format|
      format.html { redirect_to themastercares_url, notice: 'Themastercare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_themastercare
      @themastercare = Themastercare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def themastercare_params
      params.require(:themastercare).permit(:name, :courses, :price, :description, :image_url, :category_id)
    end
end
