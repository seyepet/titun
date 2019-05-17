class AdeapartmentsController < ApplicationController
  before_action :set_adeapartment, only: [:show, :edit, :update, :destroy]

  # GET /adeapartments
  # GET /adeapartments.json
  def index
    @adeapartments = Adeapartment.all
  end

  # GET /adeapartments/1
  # GET /adeapartments/1.json
  def show
  end

  # GET /adeapartments/new
  def new
    @adeapartment = Adeapartment.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /adeapartments/1/edit
  def edit
  end

  # POST /adeapartments
  # POST /adeapartments.json
  def create
    @adeapartment = Adeapartment.new(adeapartment_params)

    respond_to do |format|
      if @adeapartment.save
        format.html { redirect_to @adeapartment, notice: 'Adeapartment was successfully created.' }
        format.json { render :show, status: :created, location: @adeapartment }
      else
        format.html { render :new }
        format.json { render json: @adeapartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adeapartments/1
  # PATCH/PUT /adeapartments/1.json
  def update
    respond_to do |format|
      if @adeapartment.update(adeapartment_params)
        format.html { redirect_to @adeapartment, notice: 'Adeapartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @adeapartment }
      else
        format.html { render :edit }
        format.json { render json: @adeapartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adeapartments/1
  # DELETE /adeapartments/1.json
  def destroy
    @adeapartment.destroy
    respond_to do |format|
      format.html { redirect_to adeapartments_url, notice: 'Adeapartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adeapartment
      @adeapartment = Adeapartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adeapartment_params
      params.require(:adeapartment).permit(:name, :address, :price, :description, :image_url, :category_id)
    end
end
