class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  private
  def current_person
    @current_person ||= Person.find(session[:person_id]) if session[:person_id]
  end
  helper_method :current_person
  
  before_action:configure_permitted_paramters, if: :devise_controller?
  
  protected
  def configure_permitted_paramters
     devise_parameter_sanitizer.permit(:account_update, keys: [:twitter, :facebook, :contact_email, :about, :phone_number, :time])
  end
end

