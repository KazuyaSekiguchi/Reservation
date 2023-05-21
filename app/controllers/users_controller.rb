class UsersController < ApplicationController
  def index
    @users = User.all
    @reserves = Reserve.all
  end
  
  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    @user.user_icon = params[:user][:user_icon].read
    if @user.save
      redirect_to :users
    else
      render "new"
    end
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:User_icon, :name, :introduction))
      flash[:notice] = "ユーザーIDが「#{@user.id}」の情報を更新しました"
      redirect_to :users
    else
      render "edit"
    end
  end
 
  def destroy
  end
  
  def user_icon
    send_data(@user.user_icon, disposition: :inline)
  end
end
