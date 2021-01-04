class PostsController < ApplicationController
  before_action :set_schedule_plan, only: [:show,:edit,:update,:destroy]
  
  def index
    @plan = Plan.all
  end
  
  def show
  end
  
  def edit
  end
  
  def new
   @plan = Plan.new
  end
  
  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      flash[:notice] = "投稿が完了しました"
      redirect_to("/posts")
    else
      render("/posts/new")
    end
  end
  
  def update
    @plan.update(plan_params)
    @plan.save
    redirect_to("/posts")
  end
  
  def destroy
     @plan.destroy
     flash[:notice] = "投稿が削除されました。"
     redirect_to("/posts")
  end
  
  
  
  
  
  # before action
 def set_schedule_plan
   @plan = Plan.find_by(id: params[:id])
 end
 
  #plan_params
  def plan_params
    params.require(:plan).permit(:title, :memo, :start_time, :end_time)
  end
end


