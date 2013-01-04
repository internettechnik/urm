class AddIndexAnswersPersonId < ActiveRecord::Migration

   def self.up
   
      add_index :answers,:person_id, :name => 'answers_person_id_idx'
   
   end

   def self.down
   
     remove_index :answers, :name => 'answers_person_id_idx'
   
   end

end
 
