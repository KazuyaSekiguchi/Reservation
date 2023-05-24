class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def search
    @rooms = Room.search(params[:keyword])
  end
  
  def new
    @room = Room.new
  end
 
  def create
    @room = Room.new(params.require(:room).permit(:room_name, :introduction, :price, :address))
    @room = Room.attach(params[:room_image])
    if @room.save
      flash[:notice] = "施設を新規登録しました"
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
  end
end
