class ItelphonesController < ApplicationController
  before_action :set_itelphone, only: [:show, :edit, :update, :destroy]

  # GET /itelphones
  # GET /itelphones.json
  def index
    @itelphones = Itelphone.all
  end

  # GET /itelphones/1
  # GET /itelphones/1.json
  def show
  end

  # GET /itelphones/new
  def new
    @itelphone = Itelphone.new
  end

  # GET /itelphones/1/edit
  def edit
  end

  # POST /itelphones
  # POST /itelphones.json
  def create
    @itelphone = Itelphone.new(itelphone_params)

    respond_to do |format|
      if @itelphone.save
        format.html { redirect_to @itelphone, notice: 'Itelphone was successfully created.' }
        format.json { render :show, status: :created, location: @itelphone }
      else
        format.html { render :new }
        format.json { render json: @itelphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itelphones/1
  # PATCH/PUT /itelphones/1.json
  def update
    respond_to do |format|
      if @itelphone.update(itelphone_params)
        format.html { redirect_to @itelphone, notice: 'Itelphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @itelphone }
      else
        format.html { render :edit }
        format.json { render json: @itelphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itelphones/1
  # DELETE /itelphones/1.json
  def destroy
    @itelphone.destroy
    respond_to do |format|
      format.html { redirect_to itelphones_url, notice: 'Itelphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itelphone
      @itelphone = Itelphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itelphone_params
      params.require(:itelphone).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
