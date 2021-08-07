class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to '/reservations/index'
    else
      render 'add'
    end
  end  

  def show
    @reservation = Reservation.find(params[:id])
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :finish_date, :number_of_people)
  end 
end
