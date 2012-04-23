class DocumentsOfIssue < ActiveRecord::Base
	belongs_to :issue 	
	belongs_to :document 	
end
