xml.heuristicissue(:id => "heuristicissue_"+issue.id.to_s, :heuristicid => "heuristic_"+issue.heuristic_id.to_s) do
  # (TODO: adjust Schema definition: title/description NOT description/notice)
  xml.title                 issue.title                # REQUIRED 
  xml.description           issue.description          # optional
  xml.notice                issue.notice               # optional (INTERNAL info)
  xml.directon              issue.direction 
  xml.reproduce             issue.reproduce
  # add all "found by" infos (per reviewer)
  issue.persons.each{|p|
    xml.found(:personid => "person_"+p.id.to_s) do 
      # TODO: this could possibly be simpler !
      xml.value true
    end
  }
  
  # add all "severity" infos (per reviewer)
  issue.severity_ofissuefoundby_persons.each{|sev|
    xml.severity(:personid => "person_"+sev.person_id.to_s) do 
      # TODO: this could possibly be simpler !
      xml.value sev.severity
    end
  }
  
  # for several documents of this (heuristic-)issue
  if issue.documents.length > 0
    xml << render(issue.documents)
  end
  
  # TODO: add codereference !!
  
end # of a single (heuristic-) issue

#xml.heuristicissues do
#       xml.description report.heuristicissues_description
#       TODO: heuristicissues used for theHE

#       # optional some issues TODO loop
#       xml.heuristicissue(:heuristicid => "h1", :id => 4) do
#         xml.description "he1 descr" # TODO required
#         xml.notice "he1 descr" # TODO required
#         xml.direction "up" # TODO required
#         xml.reproduce "yes" # TODO required
#         xml.severity(:personid => "TP1-Pilot")do # TODO some existing user PID
#           xml.value 4 # optional
#         end # of severity 
#         xml.found(:personid => "TP1-Pilot")do # TODO some existing user PID
#          xml.value true # TODO required
#         end
#             # todo for several documents of the current heuristic issue
#             xml << render(:partial => 'xml_document', :locals => {:report => report})
#             # TODO: see above for details of how to create a codereference
#             # xml.codereference "TODO... ??? WHERE" # do NOT replicate code !!
#       end # of a single heuristic issue
#end # of heuristicissues
