class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:stripe_card_token, :email, :password, :password_confirmation])
  end

  private

  # def after_sign_in_path_for(resource)
  #   if current_user.login_count == 0
  #     new_user_profile_path(user_id: current_user.id)
  #   else
  #     root_path
  #   end
  #   User.find(current_user.id).increment!(:login_count)
  # end

end
