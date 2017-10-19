class Loan < ApplicationRecord

  belongs_to :member
  accepts_nested_attributes_for :member

  has_many :community_financings
  accepts_nested_attributes_for :community_financings
end
