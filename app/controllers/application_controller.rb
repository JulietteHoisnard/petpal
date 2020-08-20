class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  # def after_sign_in_path_for(resource)
  #   if session[:form_data].present?
  #     pet_path(@pet)
  #   end
  # end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
  
end
