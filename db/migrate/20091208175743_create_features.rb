class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string :description
      t.integer :effort
      t.integer :priority
      t.integer :sprint_id

      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
