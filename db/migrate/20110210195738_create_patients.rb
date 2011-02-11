class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.integer :id
      t.string :name
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
