class CreateDocumentsOfIssues < ActiveRecord::Migration
  def self.up
    create_table :documents_of_issues do |t|
      t.integer :document_id
      t.integer :issue_id

      t.timestamps
    end
  end

  def self.down
    drop_table :documents_of_issues
  end
end
