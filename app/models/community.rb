class Community < ApplicationRecord
	#attr_accessible :community_name, :leader_id, :created_by, :iuran_pokok, :iuran_wajib, :iuran_sukarela

  has_many :community_members
  has_many :members, through: :community_members
  accepts_nested_attributes_for :community_members
end
