class Users::InvitationsController < Devise::InvitationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def edit
    # TODO If token is present, skip the approval process
    super
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:invite).concat [:role]
  end
end
