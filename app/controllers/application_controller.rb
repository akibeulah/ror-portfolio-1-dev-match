require "application_responder"

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  self.responder = ApplicationResponder
  protect_from_forgery with: :exception
  respond_to :html
  
  require 'application_responder'
  include Pagy::Backend
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: %i[stripe_card_token email password password_confirmation])
  end

  private

  def respond_modal_with(*args, &blk)
    options = args.extract_options!
    options[:responder] = ModalResponder
    respond_with(*args, options, &blk)
  end

  # def after_sign_in_path_for(resource)
  #   if current_user.login_count == 0
  #     new_user_profile_path(user_id: current_user.id)
  #   else
  #     root_path
  #   end
  #   User.find(current_user.id).increment!(:login_count)
  # end
end
