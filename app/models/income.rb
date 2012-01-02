class Income < ActiveRecord::Base
  belongs_to :company
  validates :ammount, :length => { :minimum => 0}
end
