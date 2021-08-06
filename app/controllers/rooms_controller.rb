class RoomsController < ApplicationController
  before_action :authenticate_account!, only: [:add, :create, :show]

  def index
    @rooms = Room.all
  end

  def add
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.person_id = current_account.id
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
