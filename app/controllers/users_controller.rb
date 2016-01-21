class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
  	@user=User.new
  end

  def create
  	@user = User.new(user_params)
  	redirect_to users_path
  end

  def show
  	@user = User.find(params[:id])
  end

    private

  def user_params
    params.require(:user).permit(:username, :password, :fname, :lname)
  end

end
