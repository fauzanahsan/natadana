class CommunityFinancing < ApplicationRecord

  belongs_to :community
  belongs_to :loan
  
  accepts_nested_attributes_for :community
  accepts_nested_attributes_for :loan
end
