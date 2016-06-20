module Users
  class InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :check_authorization

    private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:invite, keys: [:role])
    end

    def check_authorization
      can? :invite, User
    end
  end
end
