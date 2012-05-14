# This file is part of URM Usability Reporting Manager
# Copyright (C) 2012 internettechnik 
# Licensed under the GNU GPLv3 (http://www.gnu.org/licenses/gpl.txt) license.


module IssueHelper
  # summary information about ALL documents of this issue
  def alldocuments_summary(issue)
    docs=issue.documents
    "(#{docs.size}): "+docs.collect {|doc|  doc.summary.to_s}.join(", ")
  end
  
  
  # summary information about ALL the heuristic issue found
  def allissues_summary(report)
    return if report.nil?
    iss=report.issues
    # TODO: check if this summary is "telling enough"?!
    "(#{iss.size}): "+iss.collect {|is| is.title.to_s.truncate(15)}.join(", ")
  end
  
end