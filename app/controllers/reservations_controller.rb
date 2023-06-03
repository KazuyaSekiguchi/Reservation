class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @rooms = Room.all
  end
 
  def new
    @reservation = Reservation.new
  end

  def confirm
    #@reservation = Reservation.new(params.require(:reservation).permit(:check_in, :check_out, :number_of_people, :payment_fee, :room_id ))
    @reservation = Reservation.new(reservation_params)
    
    #render :new if @reservation.invalid?
    #@reservation = Reservation.find(params[:id])
    #@reservation.assign_attributes(reservation_params)
		#if @reservation.invalid?
		#	render :new
		#end
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:check_in, :check_out, :number_of_people, :payment_fee, :room_id, :image))
    if @reservation.save
      flash[:notice] = "宿泊予約が完了しました"
      redirect_to :reservations
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
  
  private
   def reservation_params
     params.permit(:check_in, :check_out, :number_of_people, :payment_fee, :room_id)
   end
  
  
end
