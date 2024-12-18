class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :last_name, :phone, :address ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :last_name, :phone, :address ])
  end

  def only_admin
    unless user_signed_in? && current_user.role == "admin"
      redirect_to root_path, notice: "No tienes permiso para realizar esta acción"
    end
  end
end
