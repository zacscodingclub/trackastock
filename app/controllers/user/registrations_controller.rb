class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_params

  protected
    def configure_permitted_params
      devise_parameter.sanitizer.for(:sign_up).push(:first_name, :last_name)
      devise_parameter.sanitizer.for(:account_update).push(:first_name, :last_name)
    end
end
