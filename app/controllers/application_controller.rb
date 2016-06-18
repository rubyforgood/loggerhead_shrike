class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, prepend: true
    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format|
          format.html { redirect_to root_path, :alert => "Unauthorized"}
        end
      end
end
