class AddIndexTodosUserId < ActiveRecord::Migration

   def self.up
   
      add_index :todos,:user_id, :name => 'todos_user_id_idx'
   
   end

   def self.down
   
     remove_index :todos, :name => 'todos_user_id_idx'
   
   end

end
 
