class Issue < ActiveRecord::Base
  belongs_to :report
  belongs_to :heuristic
  
  has_many :issue_foundby_persons
  has_many :persons, :through => :issue_foundby_persons 
  
  has_many :severity_ofissuefoundby_persons
  
  # an issue might hold several documents
	has_many :documents_of_issues
	has_many :documents, :through => :documents_of_issues
  
  # an issue might hold several code references
	has_many :codereferences_of_issues
	has_many :codereferences, :through => :codereferences_of_issues
  
  
  
	def summary
	  t=self.title.to_s.truncate(35) || ""
	  d= self.description.to_s.empty? ? "" : ": "+self.description.to_s.truncate(25)
	  t+d
  end
  
  
end
