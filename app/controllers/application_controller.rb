class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configuer_permitted_parameters, if: :devise_controller?

  private
  def configuer_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end
end
