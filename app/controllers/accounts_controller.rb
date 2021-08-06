class AccountsController < ApplicationController
  def show
    @account = Account.find(params[:id])
    @rooms = Room.where(person_id: @account.id) 
  end
end
