# This file is part of URM Usability Reporting Manager
# Copyright (C) 2012 internettechnik 
# Licensed under the GNU GPLv3 (http://www.gnu.org/licenses/gpl.txt) license.


class Document < ActiveRecord::Base

  # one or many documents belong to a report
  has_many :document_of_reports
	has_many :reports, :through => :document_of_reports
	
	# one or many documents belong to a finding
	has_many :documents_of_findings
	has_many :findings, :through => :documents_of_findings
	
  # a heuristic "issue" might hold several documents
	has_many :documents_of_issues
	has_many :issues, :through => :documents_of_issues
	
  
	has_attached_file :attachment
	
	def summary
	  msg  = self.description ? self.description : ""
	  if self.doctype=="link" # for a link we want to show the url also: 
	    msg += ":" unless msg.empty? || self.source || self.source.size<1
	    msg += (self.source && self.source.size>0) ? "("+self.source+")" : ""
    end
    msg.truncate(30)
  end
	
	
end
