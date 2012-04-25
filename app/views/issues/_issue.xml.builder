# HE: heuristic issues
xml.heuristicissue(:id => "heuristicissue_"+issue.id.to_s, :heuristicid => "heuristic_"+issue.heuristic_id.to_s) do
  # (TODO: adjust Schema definition: title/description NOT description/notice)
  xml.title                 issue.title                # REQUIRED 
  xml.description           issue.description          # optional
  xml.notice                issue.notice               # optional (INTERNAL info)
  xml.directon              issue.direction            # UP or DOWN
  xml.reproduce             issue.reproduce            # how to reproduce "search and..."
  # add all "found by" infos (per reviewer)
  issue.persons.each{|p|
    # metadata as attributes: person-id
    xml.found(:personid => "person_"+p.id.to_s) do 
      # real-data as tags: value TRUE/FALSE
      xml.value true
    end
  }
  
  # add all "severity" infos (per reviewer)
  issue.severity_ofissuefoundby_persons.each{|sev|
    # metadata as attributes: person-id
    xml.severity(:personid => "person_"+sev.person_id.to_s) do 
      # real-data as tags: severity
      xml.value sev.severity
    end
  }
  
  # for several documents of this (heuristic-)issue
  if issue.documents.length > 0
    xml << render(issue.documents)
  end
  
  # TODO: add codereference !!
  #       see above for details of how to create a codereference
  
  
  # optional 0..several codefererences
  if issue.codereferences.length > 0
     # list of codereferences
    xml << render(issue.codereferences)
     # end list of codereferences
  end
  
 

  
  
  
end # of a single (heuristic-) issue



