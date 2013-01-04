class AddIndexTranscriptEventsFindingId < ActiveRecord::Migration

   def self.up
   
      add_index :transcript_events,:finding_id, :name => 'transcript_events_finding_id_idx'
   
   end

   def self.down
   
     remove_index :transcript_events, :name => 'transcript_events_finding_id_idx'
   
   end

end
 
