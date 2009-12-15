class TasksController < ApplicationController
  before_filter :load_sprint
  
  def index
  end
  
  def new
    feature = Feature.find(params[:feature_id])
    @new_task = Task.new(:feature => feature)
    render :action => :index
  end
  
  def create
    Task.create(params[:task])
    redirect_to sprint_tasks_path
  end
  
  def edit
    @edit_task = Task.find(params[:id])
    render :action => :index
  end
  
  def update
    task = Task.find(params[:id])
    task.update_attributes(params[:task])
    redirect_to sprint_tasks_path
  end
  
  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to sprint_tasks_path
  end
  
  private
  
  def load_sprint
    @sprint = Sprint.find(params[:sprint_id])
  end
end