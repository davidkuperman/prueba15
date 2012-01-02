class Company < ActiveRecord::Base
  belongs_to :ceo
  validates :name , :length => { :minimum => 2}
end
