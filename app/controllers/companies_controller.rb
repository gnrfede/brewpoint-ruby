class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      @company.users << current_user
      @company.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
  end

  def show

  end


  private
  def company_params
    params.require(:company).permit(:name)
  end
end
