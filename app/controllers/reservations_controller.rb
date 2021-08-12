class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: [:index, :create]
  
  def index
    @reservations = Reservation.all
  end
  
  def confirm
    @reservation = Reservation.new(reservation_params)
    @dates_of_reservation = (@reservation.finish_date - @reservation.start_date).to_i
    @reservation.room = Room.find(params[:id])
    if @reservation.invalid?
      render template: 'rooms/show'
    end  
  end  
  
  def create
    @room = Room.find(params[:id])
    @reservation = Reservation.new(reservation_params)
    @reservation.room = @room
    if params[:back]
      render template: 'rooms/show'
    elsif @reservation.save
      redirect_to reservations_show_path(@reservation.id)
    else
      render template: 'rooms/show'
    end
  end  

  def show
    @reservation = Reservation.find(params[:id])
    @dates_of_reservation = (@reservation.finish_date - @reservation.start_date).to_i
  end
  
  
  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :finish_date, :number_of_people, :room_id)
  end 
end
