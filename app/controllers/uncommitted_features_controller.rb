class UncommittedFeaturesController < ApplicationController
  before_filter :load_features
  
  def index
  end
  
  def new
    @new_feature = Feature.new
    render :action => :index
  end
  
  def create
    Feature.create!(params[:feature])
    redirect_to uncommitted_features_path
  end
  
  def edit
    @edit_feature = Feature.find(params[:id])
    render :action => :index
  end
  
  def update
    feature = Feature.find(params[:id])
    feature.update_attributes!(params[:feature])
    redirect_to uncommitted_features_path
  end
  
  def destroy
    feature = Feature.find(params[:id])
    feature.destroy
    redirect_to uncommitted_features_path
  end
  
  def update_order
    Feature.order(params[:item], nil)
  end
  
  private
  
  def load_features
    @uncommitted_features = Feature.uncommitted
    @uncommitted_effort = @uncommitted_features.sum(:effort)
  end
end