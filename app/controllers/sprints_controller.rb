class SprintsController < ApplicationController
  def index
    @sprints = Sprint.find(:all, :order => :start_date)
  end
  
  def show
    @sprint = Sprint.find(params[:id])
  end

  def new
    @sprint = Sprint.new
  end

  def create
    Sprint.create(params[:sprint])
    redirect_to sprints_path
  end

  def edit
    @sprint = Sprint.find(params[:id])
  end

  def update
    sprint = Sprint.find(params[:id])
    sprint.update_attributes(params[:sprint])
    redirect_to sprints_path
  end

  def destroy
    sprint = Sprint.find(params[:id])
    sprint.destroy
    redirect_to sprints_path
  end
end
