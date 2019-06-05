class InfinixphonesController < ApplicationController
  before_action :set_infinixphone, only: [:show, :edit, :update, :destroy]

  # GET /infinixphones
  # GET /infinixphones.json
  def index
    @infinixphones = Infinixphone.all
  end

  # GET /infinixphones/1
  # GET /infinixphones/1.json
  def show
  end

  # GET /infinixphones/new
  def new
    @infinixphone = Infinixphone.new
  end

  # GET /infinixphones/1/edit
  def edit
  end

  # POST /infinixphones
  # POST /infinixphones.json
  def create
    @infinixphone = Infinixphone.new(infinixphone_params)

    respond_to do |format|
      if @infinixphone.save
        format.html { redirect_to @infinixphone, notice: 'Infinixphone was successfully created.' }
        format.json { render :show, status: :created, location: @infinixphone }
      else
        format.html { render :new }
        format.json { render json: @infinixphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infinixphones/1
  # PATCH/PUT /infinixphones/1.json
  def update
    respond_to do |format|
      if @infinixphone.update(infinixphone_params)
        format.html { redirect_to @infinixphone, notice: 'Infinixphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @infinixphone }
      else
        format.html { render :edit }
        format.json { render json: @infinixphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infinixphones/1
  # DELETE /infinixphones/1.json
  def destroy
    @infinixphone.destroy
    respond_to do |format|
      format.html { redirect_to infinixphones_url, notice: 'Infinixphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infinixphone
      @infinixphone = Infinixphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infinixphone_params
      params.require(:infinixphone).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
