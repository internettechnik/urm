xml.codereference(  :id  => "codereference_"+codereference.id.to_s) do
  xml.project codereference.swproject
  xml.version codereference.swversion
  xml.package codereference.swpackage
  xml.class   codereference.swclass
  xml.method  codereference.swmethod
  xml.lineno  codereference.swlineno
  xml.notice  codereference.notice
end # of a single codereference
 
