class FollowsController < ApplicationController
  before_action :set_user

  def create
    if current_user.follow(@user.id)
      flash[:success] = "Followed #{Profile.find_by(user_id: @user.id).first_name}"
      redirect_to request.referrer
    else
      flash[:danger] = "Oops... something went wrong"
      redirect_to request.referrer
    end
  end

  def destroy
    if current_user.unfollow(@user.id)
      flash[:success] = "Unfollowed #{Profile.find_by(user_id: @user.id).first_name}"
      redirect_to request.referrer
    else
      flash[:danger] = "Oops... something went wrong"
      redirect_to request.referrer
    end
  end

  def followers
    @followers = @user.followers.profile
  end

  def following 
    @following = @user.following
  end

  def set_user 
    @user = User.find_by(id: params[:user_id])
  end
end