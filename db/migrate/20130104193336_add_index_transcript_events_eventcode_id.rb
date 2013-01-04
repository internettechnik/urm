class AddIndexTranscriptEventsEventcodeId < ActiveRecord::Migration

   def self.up
   
      add_index :transcript_events,:eventcode_id, :name => 'transcript_events_eventcode_id_idx'
   
   end

   def self.down
   
     remove_index :transcript_events, :name => 'transcript_events_eventcode_id_idx'
   
   end

end
 
