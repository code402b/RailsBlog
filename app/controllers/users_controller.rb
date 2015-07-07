class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    password          = params[:user][:password]
    password_confirm  = :password_confirmation

    if password == password_confirm
      @user = User.create(params[:user])
      flash[:notice] = "#{@user.username} created"
      redirect_to users_path
    else
      flash[:alert] = "passwords don't match"
    end
  end

end
