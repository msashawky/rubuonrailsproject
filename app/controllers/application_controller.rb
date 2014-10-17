class ApplicationController < ActionController::Base
layout "index"
  # Prevent CSRF attacks by raising an exception.
<<<<<<< HEAD
  # For APIs, you may want to use :null_session instead.
  helper :all
=======
  # For APIs, you may want to use :null_session instead.   
>>>>>>> 3a4624dd3b1275fbfc0e1d425455e02096cffb7a
  protect_from_forgery with: :exception
  protect_from_forgery
  helper_method :current_cart

   before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  # def configure_permitted_parameters
  
 def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :gender) }
end

end

