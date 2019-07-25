class OrderServicesController < ApplicationController
  before_action :set_order_service, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /order_services
  # GET /order_services.json
  def index
    @order_services = OrderService.where(user_id: current_user.id).order(:id).page params[:page]
    @order_services_xls = OrderService.where(user_id: current_user.id)
    respond_to do |format|
      format.html
      format.csv { send_data @order_services_xls.to_csv }
      format.xls { send_data @order_services_xls.to_csv(col_sep: "\t") }
    end
  end

  # GET /order_services/1
  # GET /order_services/1.json
  def show
  end

  # GET /order_services/new
  def new
    @order_service = OrderService.new
  end

  # GET /order_services/1/edit
  def edit

  end

  # POST /order_services
  # POST /order_services.json
  def create
    @order_service = OrderService.new(order_service_params.merge(user: current_user))
  #   @order_service.totalvalue = @order_service.amount * @order_service.service.price
  #   if @order_service.amount < 10
  #     @order_service.liquidvalue = @order_service.totalvalue
  #     @order_service.discount = 0
  # end
  #   if @order_service.amount >= 10
  #       @order_service.discount = 0.1
  #       @order_service.liquidvalue = @order_service.totalvalue - (@order_service.totalvalue * @order_service.discount)
  #   end
  #   if @order_service.amount >= 20
  #     @order_service.discount = 0.2
  #     @order_service.liquidvalue = @order_service.totalvalue - (@order_service.totalvalue * @order_service.discount)
  #   end
  # if @order_service.amount >= 30 
  #   @order_service.discount = 0.3
  #   @order_service.liquidvalue = @order_service.totalvalue - (@order_service.totalvalue * @order_service.discount)
  # end
  
    
  respond_to do |format|
      if @order_service.save
        format.html { redirect_to @order_service, notice: 'Ordem de Serviço criada com sucesso!' }
        format.json { render :show, status: :created, location: @order_service }
      else
        format.html { render :new }
        format.json { render json: @order_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_services/1
  # PATCH/PUT /order_services/1.json
  def update
    respond_to do |format|
      if @order_service.update(order_service_params)
        format.html { redirect_to @order_service, notice: 'Ordem de Serviço atualizada com sucesso!' }
        format.json { render :show, status: :ok, location: @order_service }
      else
        format.html { render :edit }
        format.json { render json: @order_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_services/1
  # DELETE /order_services/1.json
  def destroy
    @order_service.destroy
    respond_to do |format|
      format.html { redirect_to order_services_url, notice: 'Ordem de Serviço removida com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_service
      @order_service = OrderService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_service_params
      params.require(:order_service).permit(:service_id, :amount, :employee, :date, :starttime, :endtime, :detail, :user_id, :totalvalue, :liquidvalue, :discount)
    end
end
