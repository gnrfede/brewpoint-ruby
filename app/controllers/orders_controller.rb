class OrdersController < ApplicationController
  before_action :require_user

  def new
    @order = Order.new
  end

  def show
    @user = User.find(session[:user_id])
    if @user
      @orders = @user.orders
      if not @user.company.nil?
        @company_orders = @user.company.orders
      end
    end
  end

end
