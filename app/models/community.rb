class Community < ApplicationRecord
	attr_accessible :community_name, :leader_id, :created_by, :iuran_pokok, :iuran_wajib, :iuran_sukarela

	has_many :community_members
end
