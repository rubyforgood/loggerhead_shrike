class Users::InvitationsController < Devise::InvitationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def edit
    puts '************'
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone])
  end

end
