class SuppliesController < ApplicationController

  def index
    @company = Company.find(current_user.company)
    @supplies = @company.supplies
  end

  def new
    @company = Company.find(current_user.company)
    @suppliers = @company.suppliers
    @supply = @company.supplies.build
  end

  def create
    @company = Company.find(current_user.company)
    @supply = @company.supplies.build(supply_params)

    if @supply.save
      @supplier = Supplier.find(params[:supplier_id])
      @supplier.supplies << @supply
      redirect_to company_supplies_path(@company)
    else
      render "new"
    end
  end

  private
  def supply_params
    params.require(:supply).permit(:name, :description, :amount)
  end
end
