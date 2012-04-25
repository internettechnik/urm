class Codereference < ActiveRecord::Base
    belongs_to :report
    
    # (many) codereference(s) for an issue
		has_many :codereferences_of_issues
		has_many :issues, :through => :codereferences_of_issues
    
    
end
