class Student < ActiveRecord::Base
  attr_accessible :classscore, :finalscore, :labscore, :nickname, :projectscore, :studentid, :studentname
  validates :studentid, :presence => true, :uniqueness => true, :numericality => { :greater_than => 0 }
  validates :studentname, :presence => true
  validates :nickname, :presence => true
  validates :projectscore, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 40 }
  validates :finalscore, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 40 }
  validates :labscore, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
  validates :classscore, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
end