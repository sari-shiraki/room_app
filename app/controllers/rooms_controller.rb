class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def add
    @room = Room.new
  end

  def create
    if request.post?
      Room.create(room_params)
    end
    redirect_to '/rooms'
  end

  def show
    @room = Room.find(params[:id])
  end
  
  private
  def room_params
    params.require(:room).permit(:room_name, :room_introduction, :price, :adress)
  end  
end
