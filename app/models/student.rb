class Student < ActiveRecord::Base
  attr_accessible :classscore, :finalscore, :labscore, :nickname,
                  :projectscore, :studentid, :studentname

  validates :studentid, presence: true, uniqueness: true,
                        numericality: {greater_than: 0}

  # Don't repeat yourself
  [:studentname, :nickname, :projectscore, :finalscore,
   :labscore, :classscore].each do |col|
      validates col, presence: true
  end

  validates :projectscore, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 40 }
  validates :finalscore,   numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 40 }
  validates :labscore,     numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
  validates :classscore,   numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
end
