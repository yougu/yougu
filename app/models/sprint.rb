class Sprint < ActiveRecord::Base
  has_many :features, :order => 'priority desc', :dependent => :nullify
  
  def committed_effort
    return features.sum(:effort)
  end
end
