class ProfilesController < ApplicationController
  def new
    # user profile form
    @user = User.find(params[:user_id])
    @profile = @user.build_profile
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)

    if @profile.save
      if @user.login_count == 0 ? (message = "Profile Created") : (message = "Profile updated")
        flash[:sucess] = message
        redirect_to user_path(params[:user_id])
      else
        render action: :new
      end
    end

    private

    def profile_params
      params.require(:profile).permit(:first_name, :middle_name, :last_name, :job_title, :phone_number, :contact_email, :description)
    end
  end
end