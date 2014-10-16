class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all
  protect_from_forgery with: :exception
  protect_from_forgery
  helper_method :current_cart

   before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :first_name
  #   devise_parameter_sanitizer.for(:sign_up) << :last_name

  # end

 def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :phone_number, :gender) }
end

end
#layout"index"
