class Task < ActiveRecord::Base
  belongs_to :feature
  
  validates_presence_of :feature
end
