class AddIndexAnswersQuestionId < ActiveRecord::Migration

   def self.up
   
      add_index :answers,:question_id, :name => 'answers_question_id_idx'
   
   end

   def self.down
   
     remove_index :answers, :name => 'answers_question_id_idx'
   
   end

end
 
