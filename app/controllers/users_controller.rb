class UsersController < ApplicationController
  layout 'application'
  before_action :authenticate_user!, only: [:profile, :update, :account]
  
  def index
    @msg = 'this is sample page.'
    @rooms = Room.all
  end

  def profile
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      flash[:notice] = "Profile was successfully updated."
      redirect_to action: :profile
    else
      render action: :profile
    end  
  end
  
  def account
    @user = current_user
  end  
  
  def show
    @user = current_user
    @rooms = @user.rooms
  end 
  
  private
  def user_params
    params.require(:user).permit(:image, :name, :introduction)
  end  
  
end
