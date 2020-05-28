class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def followers
        @followers = User.find_by(id: params[:user_id]).followers
    end
    
    def following 
        @following = User.find_by(id: params[:user_id]).following
    end
end