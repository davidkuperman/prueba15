class Company < ActiveRecord::Base

  validates :name , :length => { :minimum => 2}
end
