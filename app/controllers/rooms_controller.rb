class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to '/rooms'
    else
      @msg = "入力に問題があります"
      render 'add'
    end
  end

  def show
    @room = Room.find(params[:id])
  end
  
  private
  def room_params
    params.require(:room).permit(:room_name, :room_introduction, :price, :adress)
  end
end
