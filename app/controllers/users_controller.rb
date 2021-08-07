class UsersController < ApplicationController
  layout 'application'
  before_action :authenticate_user!, only: :login_check
  
  def index
    @msg = 'this is sample page.'
    @rooms = Room.all
  end

  def login_check
    @user = current_user
    @msg = 'account created at: ' + @user.created_at.to_s
  end
  
  def show
    @user = User.find(params[:id])
  end 
  
  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
    if @user.update
      redireci_to '/users/#{@user.id}'
    end  
  end  
  
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end  
  
  
end
