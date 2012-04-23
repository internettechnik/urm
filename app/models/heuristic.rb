class Heuristic < ActiveRecord::Base
  belongs_to :report
  has_many :issues
  
  def summary
    self.title ? self.title.truncate(30) : ""
  end
end
