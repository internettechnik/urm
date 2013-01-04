class AddIndexTranscriptEventsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :transcript_events,:report_id, :name => 'transcript_events_report_id_idx'
   
   end

   def self.down
   
     remove_index :transcript_events, :name => 'transcript_events_report_id_idx'
   
   end

end
 
