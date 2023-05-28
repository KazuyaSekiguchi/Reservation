class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @reservations = Reservation.all
  end
  
  def search
    @rooms = Room.search(params[:keyword])
  end
  
  def new
    @room = Room.new
  end
 
  def create
    @room = Room.new(params.require(:room).permit(:room_name, :image, :introduction, :price, :address))
    if @room.save
      redirect_to :rooms
    else
      render "new"
    end
  end
 
  def show
    @room = Room.find(params[:id])
  end
 
  def edit

  end
 
  def update

  end
 
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to :rooms
  end
end
