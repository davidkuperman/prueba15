class AddCompanieToIncome < ActiveRecord::Migration
  def self.up
    add_column :incomes, :company_id, :integer
  end

  def self.down
    remove_column :incomes, :company_id
  end
end
