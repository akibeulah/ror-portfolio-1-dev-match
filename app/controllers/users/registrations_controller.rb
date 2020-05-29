class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_plan, only: :new

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

  def select_plan
    unless params[:plan] && (params[:plan] == '1' || params[:plan] == '2' || params[:plan] == '3')
      flash[:notice] = "Please select a valid membership plan to sign up."
      redirect_to root_url
    end
  end
end