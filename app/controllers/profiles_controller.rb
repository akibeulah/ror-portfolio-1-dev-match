class ProfilesController < ApplicationController
  def new
    # user profile form
    @user = User.find(params[:user.id])
    @profile = @user.build_profile
  end
end