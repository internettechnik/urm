class CreateSeverityOfissuefoundbyPeople < ActiveRecord::Migration
  def self.up
    create_table :severity_ofissuefoundby_people do |t|
      t.integer :issue_id
      t.integer :person_id
      t.integer :severity
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :severity_ofissuefoundby_people
  end
end
