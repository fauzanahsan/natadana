class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	
  has_many :communities, through: :community_members
  has_one :member_wallet

  #accepts_nested_attributes_for :community_members
end
