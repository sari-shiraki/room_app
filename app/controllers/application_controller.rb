class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller? 
  before_action :set_search
  
  #deviseの遷移先変更
  
  def after_sign_in_path_for(resource)
    root_path(resource)
  end
  
  def after_sign_up_path_for(resource)
    root_path(resource)
  end
  
  def after_sign_out_path_for(resource)
    root_path(resource)
  end


  
  private
  def set_search
    @q = Room.ransack(params[:q])
    @results = @q.result
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
