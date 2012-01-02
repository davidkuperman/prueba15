class AddCeoToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :ceo_id, :integer
  end

  def self.down
    remove_column :companies, :ceo_id
  end
end
