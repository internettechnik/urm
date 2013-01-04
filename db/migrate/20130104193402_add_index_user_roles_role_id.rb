class AddIndexUserRolesRoleId < ActiveRecord::Migration

   def self.up
   
      add_index :user_roles,:role_id, :name => 'user_roles_role_id_idx'
   
   end

   def self.down
   
     remove_index :user_roles, :name => 'user_roles_role_id_idx'
   
   end

end
 
