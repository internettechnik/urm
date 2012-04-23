# for HE only
# tasks are optional
if report.issues.length>0
  xml.heuristicissues do
    xml.description report.heuristicissues_description
    xml << render(report.issues).gsub(/^/, '  ') # correct identation
  end
end