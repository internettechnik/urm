class AddIndexDevicesReportId < ActiveRecord::Migration

   def self.up
   
      add_index :devices,:report_id, :name => 'devices_report_id_idx'
   
   end

   def self.down
   
     remove_index :devices, :name => 'devices_report_id_idx'
   
   end

end
 
