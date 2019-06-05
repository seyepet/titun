class TechnophonesController < ApplicationController
  before_action :set_technophone, only: [:show, :edit, :update, :destroy]

  # GET /technophones
  # GET /technophones.json
  def index
    @technophones = Technophone.all
  end

  # GET /technophones/1
  # GET /technophones/1.json
  def show
  end

  # GET /technophones/new
  def new
    @technophone = Technophone.new
  end

  # GET /technophones/1/edit
  def edit
  end

  # POST /technophones
  # POST /technophones.json
  def create
    @technophone = Technophone.new(technophone_params)

    respond_to do |format|
      if @technophone.save
        format.html { redirect_to @technophone, notice: 'Technophone was successfully created.' }
        format.json { render :show, status: :created, location: @technophone }
      else
        format.html { render :new }
        format.json { render json: @technophone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technophones/1
  # PATCH/PUT /technophones/1.json
  def update
    respond_to do |format|
      if @technophone.update(technophone_params)
        format.html { redirect_to @technophone, notice: 'Technophone was successfully updated.' }
        format.json { render :show, status: :ok, location: @technophone }
      else
        format.html { render :edit }
        format.json { render json: @technophone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technophones/1
  # DELETE /technophones/1.json
  def destroy
    @technophone.destroy
    respond_to do |format|
      format.html { redirect_to technophones_url, notice: 'Technophone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technophone
      @technophone = Technophone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technophone_params
      params.require(:technophone).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
