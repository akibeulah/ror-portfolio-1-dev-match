class PagesController < ApplicationController
  def home
    @free_plan = Plan.find(1)
    @basic_plan = Plan.find(2)
    @pro_plan = Plan.find(3)

    @pagy, @posts = pagy(Post.all.order('created_at DESC'), items: 12)
  end

  def about

  end
end
