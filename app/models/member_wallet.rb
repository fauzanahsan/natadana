class MemberWallet < ApplicationRecord

  belongs_to :member 
  accepts_nested_attributes_for :member

end
