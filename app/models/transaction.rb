class Transaction < ApplicationRecord
  belongs_to :community
  belongs_to :member
  
  #accepts_nested_attributes_for :community
  accepts_nested_attributes_for :member

end
