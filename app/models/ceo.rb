class Ceo < ActiveRecord::Base
  has_many :companies
  validates :name, :length => { :minimum => 2}
end
