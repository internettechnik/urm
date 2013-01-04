class AddIndexAttributesOfPeopleCustomAttributeId < ActiveRecord::Migration

   def self.up
   
      add_index :attributes_of_people,:custom_attribute_id, :name => 'attributes_of_people_custom_attribute_id_idx'
   
   end

   def self.down
   
     remove_index :attributes_of_people, :name => 'attributes_of_people_custom_attribute_id_idx'
   
   end

end
 
