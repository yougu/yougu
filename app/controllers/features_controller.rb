class FeaturesController < ApplicationController
  before_filter :load_features
  
  def index
  end
  
  def new
    @new_feature = Feature.new
    render :action => :index
  end
  
  def create
    Feature.create!(params[:feature])
    redirect_to sprint_features_path
  end
  
  def edit
    @edit_feature = Feature.find(params[:id])
    render :action => :index
  end
  
  def update
    feature = Feature.find(params[:id])
    feature.update_attributes!(params[:feature])
    redirect_to sprint_features_path
  end
  
  def destroy
    feature = Feature.find(params[:id])
    feature.destroy
    redirect_to sprint_features_path
  end
  
  def update_order
    committable = []
    uncomitted  = []
    
    commited = true
    params[:item].each do |id|
      if(id == 'marker')
        commited = false
      else
        if commited
          committable << id
        else
          uncomitted << id
        end
      end
    end

    Feature.order(committable, @sprint.id)    
    Feature.order(uncomitted, nil)
    
    render :update do |page|
      page << 'alert("hi");'
    end
  end
  
  private
  
  def load_features
    @uncommitted_features = Feature.uncommitted
    
    @sprint = Sprint.find(params[:sprint_id])
    @committed_features = @sprint.features
  end
end