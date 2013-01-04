class AddIndexAnswersReportId < ActiveRecord::Migration

   def self.up
   
      add_index :answers,:report_id, :name => 'answers_report_id_idx'
   
   end

   def self.down
   
     remove_index :answers, :name => 'answers_report_id_idx'
   
   end

end
 
