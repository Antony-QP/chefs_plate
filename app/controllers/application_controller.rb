class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def authenticate_admin!
        authenticate_user!
        redirect_to :somewhere, status: :forbidden unless current_user.admin?
      end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end

    def default_url_options
        { host: ENV["DOMAIN"] || "localhost:3000" }
    end
end
