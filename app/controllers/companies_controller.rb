class CompaniesController < ApplicationController

  def new
    @company = Company.new

    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @company = Company.new(company_params)
    @company.users << current_user
    if @company.save
      redirect_to root_path
    else
      respond_to do |format|
        format.js {render 'new', locals: @company}
        format.html
      end
    end
  end


  private
  def company_params
    params.require(:company).permit(:name)
  end
end
