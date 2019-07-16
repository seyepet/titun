class LocalPurchasingOrdersController < ApplicationController
  before_action :set_local_purchasing_order, only: [:show, :edit, :update, :destroy]

  # GET /local_purchasing_orders
  # GET /local_purchasing_orders.json
  def index
    @local_purchasing_orders = LocalPurchasingOrder.all
  end

  # GET /local_purchasing_orders/1
  # GET /local_purchasing_orders/1.json
  def show
  end

  # GET /local_purchasing_orders/new
  def new
    @local_purchasing_order = LocalPurchasingOrder.new
  end

  # GET /local_purchasing_orders/1/edit
  def edit
  end

  # POST /local_purchasing_orders
  # POST /local_purchasing_orders.json
  def create
    @local_purchasing_order = LocalPurchasingOrder.new(local_purchasing_order_params)

    respond_to do |format|
      if @local_purchasing_order.save
        format.html { redirect_to @local_purchasing_order, notice: 'Local purchasing order was successfully created.' }
        format.json { render :show, status: :created, location: @local_purchasing_order }
      else
        format.html { render :new }
        format.json { render json: @local_purchasing_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_purchasing_orders/1
  # PATCH/PUT /local_purchasing_orders/1.json
  def update
    respond_to do |format|
      if @local_purchasing_order.update(local_purchasing_order_params)
        format.html { redirect_to @local_purchasing_order, notice: 'Local purchasing order was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_purchasing_order }
      else
        format.html { render :edit }
        format.json { render json: @local_purchasing_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_purchasing_orders/1
  # DELETE /local_purchasing_orders/1.json
  def destroy
    @local_purchasing_order.destroy
    respond_to do |format|
      format.html { redirect_to local_purchasing_orders_url, notice: 'Local purchasing order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_purchasing_order
      @local_purchasing_order = LocalPurchasingOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_purchasing_order_params
      params.require(:local_purchasing_order).permit(:amount, :name, :contragent, :currency, :date)
    end
end
