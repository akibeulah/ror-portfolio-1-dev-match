# noinspection RubyResolve
class ProfilesController < ApplicationController
  def new
    # user profiles form
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)

    if @profile.save
      flash[:success] = 'Profile Created Successfully.'
      redirect_to user_path(params[:user_id])
    else
      render action: :new
    end
  end

  def edit

  end

  private
  def profile_params
    params.require('profile').permit(:authenticity_token, :profile, :commit, :user_id, :first_name, :middle_name, :last_name, :job_title, :phone_number, :contact_email, :description)
  end
end