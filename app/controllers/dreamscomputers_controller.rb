class DreamscomputersController < ApplicationController
  before_action :set_dreamscomputer, only: [:show, :edit, :update, :destroy]

  # GET /dreamscomputers
  # GET /dreamscomputers.json
  def index
    @dreamscomputers = Dreamscomputer.all
    @contact = Contact.all
 
    
  
  
  end

  # GET /dreamscomputers/1
  # GET /dreamscomputers/1.json
  def show
  end

  # GET /dreamscomputers/new
  def new
    @dreamscomputer = Dreamscomputer.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /dreamscomputers/1/edit
  def edit
  end

  # POST /dreamscomputers
  # POST /dreamscomputers.json
  def create
    @dreamscomputer = Dreamscomputer.new(dreamscomputer_params)

    respond_to do |format|
      if @dreamscomputer.save
        format.html { redirect_to @dreamscomputer, notice: 'Dreamscomputer was successfully created.' }
        format.json { render :show, status: :created, location: @dreamscomputer }
      else
        format.html { render :new }
        format.json { render json: @dreamscomputer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dreamscomputers/1
  # PATCH/PUT /dreamscomputers/1.json
  def update
    respond_to do |format|
      if @dreamscomputer.update(dreamscomputer_params)
        format.html { redirect_to @dreamscomputer, notice: 'Dreamscomputer was successfully updated.' }
        format.json { render :show, status: :ok, location: @dreamscomputer }
      else
        format.html { render :edit }
        format.json { render json: @dreamscomputer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dreamscomputers/1
  # DELETE /dreamscomputers/1.json
  def destroy
    @dreamscomputer.destroy
    respond_to do |format|
      format.html { redirect_to dreamscomputers_url, notice: 'Dreamscomputer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dreamscomputer
      @dreamscomputer = Dreamscomputer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dreamscomputer_params
      params.require(:dreamscomputer).permit(:name, :model, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
