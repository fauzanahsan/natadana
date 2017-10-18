class Member < ApplicationRecord
	attr_accessible :name, :description

	has_many :community_members
end
