class CreateFindings < ActiveRecord::Migration
  def self.up
    create_table :findings do |t|
      t.integer :report_id
      t.string :findingtype
      t.integer :priority
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :findings
  end
end
