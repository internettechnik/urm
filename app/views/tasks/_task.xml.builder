xml.task(:id => "task_"+task.id.to_s, :order => task.order || 0) do
  xml.title                 task.title                # REQUIRED
  xml.description           task.description          # optional
  xml.prerequisite          task.prerequisite         # optional
  xml.possiblesolutionpath  task.possiblesolutionpath # optional
  if task.endingcriteria 
      xml.endingcriteria        task.endingcriteria    # optional
  end
  xml.scheduledduration     task.scheduledduration    # optional
end # of single task