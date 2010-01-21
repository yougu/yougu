class Feature < ActiveRecord::Base
  belongs_to :sprint
  named_scope :uncommitted, :conditions => {:sprint_id => nil}, :order => 'priority desc'
  has_many :tasks, :dependent => :destroy
  
  def before_validation
    if self.priority.blank?
      self.priority = (Feature.minimum(:priority) || 0) - 1
    end
  end
  
  def self.order(ids, sprint_id)
    ids.reverse!
    update_all(
      ['sprint_id = ?, priority = FIND_IN_SET(id, ?)', sprint_id, ids.join(',')],
      { :id => ids }
    )
  end
  
  def blah
    a = eval "1+1"
    if a == 2 then
      puts "yay"
    end
  end

end
