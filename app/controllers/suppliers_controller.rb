class SuppliersController < ApplicationController

  def index
    @company = Company.find(current_user.company)
    @suppliers = @company.suppliers
  end

  def new
    @company = Company.find(current_user.company)
    @supplier = @company.suppliers.build
  end

  def create
    @company = Company.find(current_user.company)
    @supplier = @company.suppliers.build(supplier_params)
    if @supplier.save
      redirect_to company_suppliers_path(@company)
    else
      render "new"
    end

  end

  private
  def supplier_params
    params.require(:supplier).permit(:name,:address,:phone,:mail)
  end
end
