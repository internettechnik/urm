class AddIndexQuestionsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :questions,:report_id, :name => 'questions_report_id_idx'
   
   end

   def self.down
   
     remove_index :questions, :name => 'questions_report_id_idx'
   
   end

end
 
