class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end

  private
  def sign_up_params
    params.require(:user).permit(:stripe_card_token, :email, :password, :password_confirmation)
  end
end