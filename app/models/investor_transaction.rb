class InvestorTransaction < ApplicationRecord

  belongs_to :investor 
  accepts_nested_attributes_for :investor
end
