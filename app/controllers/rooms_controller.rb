class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.user = current_user
    if @room.save
      redirect_to @room
    else
      @msg = "入力に問題があります"
      render 'new'
    end
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end
  
  def search
    @results = @q.result
  end
  
  private
  def room_params
    params.require(:room).permit(:room_name, :room_introduction, :price, :adress, :user_id, :image)
  end
  
  def set_q
    @q = Room.ransack(params[:q])
  end
  
end
