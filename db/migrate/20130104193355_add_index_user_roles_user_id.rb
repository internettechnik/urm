class AddIndexUserRolesUserId < ActiveRecord::Migration

   def self.up
   
      add_index :user_roles,:user_id, :name => 'user_roles_user_id_idx'
   
   end

   def self.down
   
     remove_index :user_roles, :name => 'user_roles_user_id_idx'
   
   end

end
 
