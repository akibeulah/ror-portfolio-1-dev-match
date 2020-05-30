class SharesController < ApplicationController
  before_action :find_post
  before_action :authenticate_user!

  def create
    @post.shares.create(user_id: current_user.id)
    redirect_to request.referrer
  end

  def destroy
    Share.find(params[:id]).destroy!
    redirect_to request.referrer
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end

end