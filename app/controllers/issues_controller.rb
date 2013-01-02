# This file is part of URM Usability Reporting Manager
# Copyright (C) 2012 internettechnik 
# Licensed under the GNU GPLv3 (http://www.gnu.org/licenses/gpl.txt) license.


class IssuesController < ApplicationController

  # handle the AJAX-calls
  
  def new
    @report = Report.find(params[:report_id])
    
    logger.info("ajax-add a new heuristic issue for given report...")
    @issue = Issue.new
    @report.issues.push(@issue)
    
    
    respond_to do | format |  
      format.js {
        render(:new, :locals=>{:issue=>@issue}) 
      }  
    end
  end
  
  
  def destroy
    @issue = Issue.find(params[:id])
    
    puts("LOG: ajax-remove current heuristic issue #{@issue.summary }")
    @issue.delete
    respond_to do | format |  
      format.js {
        render(:destroy, :locals=>{:issue=>@issue}) 
      }  
    end
    
  end

  def update
    @issue = Issue.find(params[:id])
    logger.debug( "ajax-update current heuristic issue #{@issue.summary}" )

    # get (and SET or REMOVE all the reviewers of this issue)
    params[:issue][:person_ids] ||= []
    
    params[:issue].delete(:persons)
    @issue.update_attributes(params[:issue])
    
    render(:locals=>{:issue=>@issue}) 
  end


end