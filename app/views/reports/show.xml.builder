require "date"
xml.instruct! # prints encoding and version

# optionally we add the stylesheet instruction:
# http://localhost:3000/projects/1.xml?includestyle=true
if @includestyle 
  xml.instruct! 'xml-stylesheet', { :href=>'../stylesheets/usabml-to-html5.xsl',
                                    :type=>'text/xml'}
end

xml.comment! "by jf. generated "+Time.now.strftime("%Y-%m-%d %H:%m")
xml.project(:id         => @project.id, 
            "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance",
            "xsi:noNamespaceSchemaLocation" => @report_schemafile) do |pr|

	pr.title @project.title

	pr.description @project.description 

  xml << render(@report).gsub(/^/, '  ') # correct identation


end # of project