class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception




  def after_sign_in_path_for(resource)
    user_user_distributors_path(current_user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:email, :password)
    end
end

