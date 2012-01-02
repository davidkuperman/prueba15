class CreateCeos < ActiveRecord::Migration
  def self.up
    create_table :ceos do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ceos
  end
end
