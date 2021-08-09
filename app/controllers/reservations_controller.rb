class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: [:index, :create]
  
  def index
    @reservations = Reservation.all
  end
  
  def create
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    @reservation.room = @room
    if @reservation.save
      redirect_to reservations_show_path(@reservation.id)
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
