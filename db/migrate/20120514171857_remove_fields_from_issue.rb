class RemoveFieldsFromIssue < ActiveRecord::Migration
  def self.up
    remove_column :issues, :direction
  end

  def self.down
    add_column :issues, :direction, :string
  end
end
