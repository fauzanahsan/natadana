class Member < ApplicationRecord

	has_many :community_members
  accepts_nested_attributes_for :community_members
end
