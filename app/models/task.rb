class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :admin_user
  attr_accessible :admin_user_id, :project_id, :title, :is_done, :due_date
  
  validates :title, :project_id, :admin_user_id, :presence => true
  validates :is_done, :inclusion => { :in => [true, false] }
  

end
