# frozen_string_literal: true

class PagesController < ApplicationController
	def home
		@free_plan = Plan.find(1)
		@basic_plan = Plan.find(2)
		@pro_plan = Plan.find(3)

		if user_signed_in?
			post = []

			@feed_by_self = current_user.posts
			@feed_by_self.each do |p|
				post.push(p)
			end

			@feed_by_following = current_user.following
			@feed_by_following.each do |p|
				p.posts.each do |s|
					post.push(s)
				end
				p.shares.each do |s|
					post.push(Post.find_by(id: s.post_id))
				end
				p.likes.each do |s|
					post.push(Post.find_by(id: s.post_id))
				end
			end

			# @pagy, @posts = pagy_array(post.uniq!.sort! { |p, q| p.likes.count <=> q.likes.count }.reverse!)
			@posts = post.uniq! unless post.nil?

			@search = params['search']
			if @search.present?
				@users = []
				user = @search['name'].downcase
				Profile.where(first_name: user).or(Profile.where(middle_name: user)).or(Profile.where(last_name: user)).each do |p|
					@users.push(p)
				end
			else
				@users = []
				current_user.following.each do |u|
					@users.push(u.profile)
				end
			end
			@trends = Post.left_outer_joins(:likes).group(:id).order('COUNT(likes.id) DESC').left_outer_joins(:shares)
		else
			@pagy, @posts = pagy(Post.left_outer_joins(:likes).group(:id).order('COUNT(likes.id) DESC').left_outer_joins(:shares), items: 12)
		end

		@conversations = Conversation.participating(current_user).order('updated_at DESC') if user_signed_in?
		@conversation = Conversation.find_by(id: params[:c])
		@personal_message = PersonalMessage.new

		respond_to do |format|
			format.html
			format.js
		end
	end

	def plan
		@free_plan = Plan.find(1)
		@basic_plan = Plan.find(2)
		@pro_plan = Plan.find(3)
	end

	def about; end

	def search; end
end
