class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @pagy, @users = pagy(User.all, items: 18)
    end

    def show
        @user = User.find(params[:id])
    end

    def followers
        @pagy, @followers = pagy(User.find_by(id: params[:user_id]).followers, items: 14)
    end
    
    def following 
        @pagy, @following = pagy(User.find_by(id: params[:user_id]).following, items: 14)
    end
end