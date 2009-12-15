class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.references :feature
      t.string :description
      t.integer :hours
      t.string :point_person

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
