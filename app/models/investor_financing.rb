class InvestorFinancing < ApplicationRecord

  belongs_to :investor
  belongs_to :loan
  
  accepts_nested_attributes_for :investor
  accepts_nested_attributes_for :loan

end
