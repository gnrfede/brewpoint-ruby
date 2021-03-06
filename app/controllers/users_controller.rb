class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      redirect_to new_user_path
    end

  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :mail, :password, :company)
    end

end
