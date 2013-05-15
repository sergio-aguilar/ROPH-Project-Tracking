class Project < ActiveRecord::Base
  has_many :tasks
  attr_accessible :title
  validates :title, presence: :true
end
