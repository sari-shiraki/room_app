class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    
  end
  
  def create
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    @reservation.room = @room
    if @reservation.save
      redirect_to '/reservations'
    else
      render template: 'rooms/show'
    end
  end  

  def show
    @reservation = Reservation.find(params[:id])
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :finish_date, :number_of_people, :room_id)
  end 
end
