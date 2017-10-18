class CommunityMember < ApplicationRecord
	attr_accessible :community_id, :member_id

	belongs_to :community
  belongs_to :member
  

end
