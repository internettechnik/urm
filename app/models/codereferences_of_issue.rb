class CodereferencesOfIssue < ActiveRecord::Base
	belongs_to :issue 	
	belongs_to :codereference
end
