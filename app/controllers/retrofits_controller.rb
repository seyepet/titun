class RetrofitsController < ApplicationController
  before_action :set_retrofit, only: [:show, :edit, :update, :destroy]

  # GET /retrofits
  # GET /retrofits.json
  def index
    @retrofits = Retrofit.all
  end

  # GET /retrofits/1
  # GET /retrofits/1.json
  def show
  end

  # GET /retrofits/new
  def new
    @retrofit = Retrofit.new
    @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /retrofits/1/edit
  def edit
  end

  # POST /retrofits
  # POST /retrofits.json
  def create
    @retrofit = Retrofit.new(retrofit_params)

    respond_to do |format|
      if @retrofit.save
        format.html { redirect_to @retrofit, notice: 'Retrofit was successfully created.' }
        format.json { render :show, status: :created, location: @retrofit }
      else
        format.html { render :new }
        format.json { render json: @retrofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retrofits/1
  # PATCH/PUT /retrofits/1.json
  def update
    respond_to do |format|
      if @retrofit.update(retrofit_params)
        format.html { redirect_to @retrofit, notice: 'Retrofit was successfully updated.' }
        format.json { render :show, status: :ok, location: @retrofit }
      else
        format.html { render :edit }
        format.json { render json: @retrofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retrofits/1
  # DELETE /retrofits/1.json
  def destroy
    @retrofit.destroy
    respond_to do |format|
      format.html { redirect_to retrofits_url, notice: 'Retrofit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def search  
  if params[:search].blank?  
    redirect_to(root_path, alert: "Empty field!") and return  
  else 
    @parameter = params[:search].downcase  
    @results = Retrofit.all.where("lower(name) LIKE :search", search: @parameter)

  end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retrofit
      @retrofit = Retrofit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retrofit_params
      params.require(:retrofit).permit(:name, :model, :colour, :price, :description, :image_url, :number, :vendor, :category_id)
    end
end
