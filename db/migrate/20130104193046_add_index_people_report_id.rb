class AddIndexPeopleReportId < ActiveRecord::Migration

   def self.up
   
      add_index :people,:report_id, :name => 'people_report_id_idx'
   
   end

   def self.down
   
     remove_index :people, :name => 'people_report_id_idx'
   
   end

end
 
