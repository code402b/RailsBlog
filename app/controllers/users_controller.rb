class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

    password          = params[:user][:password]
    password_confirm  = params[:password_confirmation]

    if password == password_confirm
      @user = User.create(params[:user])
      flash[:notice] = "#{@user.username} created"
      redirect_to root_path
    else
      @user = User.new
      flash.now[:alert] = "passwords don't match"
      render 'new'
    end
  end



end
