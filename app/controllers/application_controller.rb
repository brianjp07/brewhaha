class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Allow certain paramters to be changed with Devise
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:sign_up) << :phone

    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :phone
  end

  #This redirects to the order type selection after user signs in.
  def after_sign_in_path_for(resource)
    if current_user
      if current_user.producer?
        request.env['omniauth.origin'] || stored_location_for(resource) || orders_path
      else
        request.env['omniauth.origin'] || stored_location_for(resource) || new_order_path
      end
    end
  end
end
