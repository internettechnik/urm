class CreateIssueFoundbyPeople < ActiveRecord::Migration
  def self.up
    create_table :issue_foundby_people do |t|
      t.integer :issue_id
      t.integer :person_id
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :issue_foundby_people
  end
end
