class SessionsController < ApplicationController
  before_action :require_user, only: [:show]
  def new

  end

  def create
    @user = User.find_by_mail(params[:session][:mail])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id]=@user.id
      redirect_to root_path
    else
        redirect_to login_path
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end

  def show

  end
end
