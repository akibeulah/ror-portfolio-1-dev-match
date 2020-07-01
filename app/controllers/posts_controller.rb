class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :only_current_user, only: [:new, :create, :update, :edit, :destroy]   

  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
    @post = Post.new
    respond_modal_with @post
  end

  def create
    @post = @user.posts.create(post_params.merge(user_id: @user))
    
    if @post.save
      flash[:success] = "Post successfully created"
      respond_modal_with @post, location: request.referrer
    else
      flash[:danger] = "Oops... something went wrong"
      render 'new'
    end
  end

  def show
    post = Post.find(params[:id])
    @user = User.find_by(id: post.user_id)
    
    commontator_thread(post)
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to request.referrer
  end


  private

  def post_params
    params.require(:post).permit(:image_url, :user_id, :title, :subtitle, :body)
  end

  def only_current_user
    @user = User.find(params[:user_id])
    redirect_to(root_url) unless @user == current_user
  end
end
