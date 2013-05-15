class Project < ActiveRecord::Base
  attr_accessible :title
  validates :title, presense: :true
end
