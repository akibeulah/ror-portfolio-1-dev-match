# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :find_post
  before_action :authenticate_user!

  def create
    Dislike.find_by(post_id: @post.id, user_id: current_user.id).destroy! if already_disliked?
    @post.likes.create(user_id: current_user.id) unless already_liked?
    redirect_to request.referrer
  end

  def destroy
    Like.find(params[:id]).destroy!
    redirect_to request.referrer
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def already_disliked?
    Dislike.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end
