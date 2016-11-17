class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path, notice: "Created User!"
    else
      render :new
    end
  end

  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  private

  def find_user
    # @user = User.find()
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
