class CompaniesController < ApplicationController
  before_action :require_user

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.users << current_user

    if @company.save
      redirect_to root_path
    else
      redirect_to new_company_path
    end

  end

  private

  def company_params
    require(:company).permit(:name)
  end

end
