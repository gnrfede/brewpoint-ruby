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

  def edit
    @company = Company.find(params[:company_id])
    @supplier = @company.suppliers.find(params[:id])

    respond_to do |format|
      format.js
      format.html
    end
  end

  def update
    @company = Company.find(params[:company_id])
    @supplier = @company.suppliers.find(params[:id])

    if @supplier.update(supplier_params)
      redirect_to company_suppliers_path(@company)
    else
      respond_to do |format|
        format.html
        format.js {render 'edit'}
      end
    end

  end

  private
  def supplier_params
    params.require(:supplier).permit(:name,:address,:phone,:mail, :description)
  end
end
