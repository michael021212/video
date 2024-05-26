class Admin::BaseController < ApplicationController
  before_action :configure_sign_in_params, if: :devise_controller?
  before_action :authenticate_admin!
  layout 'admin/layouts/application'

  protected

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
