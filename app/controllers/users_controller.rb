class UsersController < ApplicationController
  layout 'application'
  before_action :authenticate_user!, only: :login_check
  
  def index
    @msg = 'this is sample page.'
  end

  def login_check
    @user = current_user
    @msg = 'account created at: ' + @user.created_at.to_s
  end
end
