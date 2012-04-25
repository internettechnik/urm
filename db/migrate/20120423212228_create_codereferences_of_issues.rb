class CreateCodereferencesOfIssues < ActiveRecord::Migration
  def self.up
    create_table :codereferences_of_issues do |t|
      t.integer :codereference_id
      t.integer :issue_id

      t.timestamps
    end
  end

  def self.down
    drop_table :codereferences_of_issues
  end
end
