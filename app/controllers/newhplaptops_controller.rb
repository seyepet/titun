class NewhplaptopsController < ApplicationController
  before_action :set_newhplaptop, only: [:show, :edit, :update, :destroy]

  # GET /newhplaptops
  # GET /newhplaptops.json
  def index
    @newhplaptops = Newhplaptop.all
  end

  # GET /newhplaptops/1
  # GET /newhplaptops/1.json
  def show
  end

  # GET /newhplaptops/new
  def new
    @newhplaptop = Newhplaptop.new
  end

  # GET /newhplaptops/1/edit
  def edit
  end

  # POST /newhplaptops
  # POST /newhplaptops.json
  def create
    @newhplaptop = Newhplaptop.new(newhplaptop_params)

    respond_to do |format|
      if @newhplaptop.save
        format.html { redirect_to @newhplaptop, notice: 'Newhplaptop was successfully created.' }
        format.json { render :show, status: :created, location: @newhplaptop }
      else
        format.html { render :new }
        format.json { render json: @newhplaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newhplaptops/1
  # PATCH/PUT /newhplaptops/1.json
  def update
    respond_to do |format|
      if @newhplaptop.update(newhplaptop_params)
        format.html { redirect_to @newhplaptop, notice: 'Newhplaptop was successfully updated.' }
        format.json { render :show, status: :ok, location: @newhplaptop }
      else
        format.html { render :edit }
        format.json { render json: @newhplaptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newhplaptops/1
  # DELETE /newhplaptops/1.json
  def destroy
    @newhplaptop.destroy
    respond_to do |format|
      format.html { redirect_to newhplaptops_url, notice: 'Newhplaptop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newhplaptop
      @newhplaptop = Newhplaptop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newhplaptop_params
      params.require(:newhplaptop).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
