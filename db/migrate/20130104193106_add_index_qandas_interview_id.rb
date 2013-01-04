class AddIndexQandasInterviewId < ActiveRecord::Migration

   def self.up
   
      add_index :qandas,:interview_id, :name => 'qandas_interview_id_idx'
   
   end

   def self.down
   
     remove_index :qandas, :name => 'qandas_interview_id_idx'
   
   end

end
 
