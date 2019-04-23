class Admin::TopicsController < ApplicationController
  layout "admin/application"
  before_action :authenticate_admin!
  before_action :set_topic, only: [:edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new topic_params
    if @topic.save
      flash[:success] = 'Successfully'
      redirect_to admin_topics_path
    else
      flash[:warning] = 'Error'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @topic.update topic_params
      flash[:success] = 'Successfully'
      redirect_to admin_topics_path
    else
      flash[:warning] = 'Error'
      render 'edit'
    end
  end

  def destroy
    @topic.destroy
    flash[:success] = 'Successfully'
    redirect_to admin_topics_path
  end

  private 
  def set_topic
    @topic = Topic.find(params[:id])
  end
  
  def topic_params 
    params.require(:topic).permit :name
  end
end
