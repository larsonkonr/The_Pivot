class UsersController < ApplicationController
	include UsersHelper
	before_filter :authorize, only: [:show, :update, :new]

  def new
   @user = User.new
  end

  def create
    @user = User.new(user_params)
		@user.role.to_i
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname,
                                 :email,
                                 :password,
																 :password_confirmation,
                                 :display_name,
																 :role)
  end
end
