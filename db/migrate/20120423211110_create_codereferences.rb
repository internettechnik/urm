class CreateCodereferences < ActiveRecord::Migration
  def self.up
    create_table :codereferences do |t|
      t.integer :report_id
      t.string :swproject
      t.string :swversion
      t.string :swpackage
      t.string :swclass
      t.string :swmethod
      t.string :swlineno
      t.text :notice

      t.timestamps
    end
  end

  def self.down
    drop_table :codereferences
  end
end
