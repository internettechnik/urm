class AddIndexAuthorsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :authors,:report_id, :name => 'authors_report_id_idx'
   
   end

   def self.down
   
     remove_index :authors, :name => 'authors_report_id_idx'
   
   end

end
 
