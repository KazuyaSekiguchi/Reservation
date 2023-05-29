class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
 
  def new
    @reservation = Reservation.new
  end
 
  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:check_in, :check_out, :number_of_people, :payment_fee, :room_id, :image))
    if @reservation.save
      flash[:notice] = "宿泊予約が完了しました"
      redirect_to :reservation
    else
      @reservation = Reservation.find_by(params[:reservation][:room_id])
      render "rooms/show"
    end
  end
 
  def show
  end
 
  def edit
  end
 
  def update
  end
 
  def destroy
  end
end
