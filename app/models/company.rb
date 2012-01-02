class Company < ActiveRecord::Base
  belongs_to :ceo
  has_many :incomes
  validates :name , :length => { :minimum => 2}
end
