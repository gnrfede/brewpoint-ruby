class ProductsController < ApplicationController
  before_action :require_user

  def index
    @company = Company.find(current_user.company_id)
    @products = @company.products
  end

  def new
    @company = Company.find(current_user.company_id)
    @product = @company.products.build
  end

  def create
    @company = Company.find(current_user.company_id)
    @product = @company.products.build(product_params)
    if @product.save
      redirect_to company_products_path(@company)
    else
      render "new"
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description)
  end

end
