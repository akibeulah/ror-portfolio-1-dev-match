class PagesController < ApplicationController
  def home
    @free_plan = Plan.find(1)
    @basic_plan = Plan.find(2)
    @pro_plan = Plan.find(3)
  end

  def about

  end
end
