class SystemSuppliersController < ApplicationController
  before_action :set_system_supplier, only: [:show, :edit, :update, :destroy]

  # GET /system_suppliers
  # GET /system_suppliers.json
  def index
    @system_suppliers = SystemSupplier.all
  end

  # GET /system_suppliers/1
  # GET /system_suppliers/1.json
  def show
  end

  # GET /system_suppliers/new
  def new
    @system_supplier = SystemSupplier.new
  end

  # GET /system_suppliers/1/edit
  def edit
  end

  # POST /system_suppliers
  # POST /system_suppliers.json
  def create
    @system_supplier = SystemSupplier.new(system_supplier_params)

    respond_to do |format|
      if @system_supplier.save
        format.html { redirect_to @system_supplier, notice: 'System supplier was successfully created.' }
        format.json { render :show, status: :created, location: @system_supplier }
      else
        format.html { render :new }
        format.json { render json: @system_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_suppliers/1
  # PATCH/PUT /system_suppliers/1.json
  def update
    respond_to do |format|
      if @system_supplier.update(system_supplier_params)
        format.html { redirect_to @system_supplier, notice: 'System supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_supplier }
      else
        format.html { render :edit }
        format.json { render json: @system_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_suppliers/1
  # DELETE /system_suppliers/1.json
  def destroy
    @system_supplier.destroy
    respond_to do |format|
      format.html { redirect_to system_suppliers_url, notice: 'System supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_supplier
      @system_supplier = SystemSupplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_supplier_params
      params.require(:system_supplier).permit(:supplier_name, :supplier_primary_phone, :supplier_email, :supplier_website_url)
    end
end
