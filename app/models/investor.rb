class Investor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_one :investor_wallet

  has_many :investor_transactions
  accepts_nested_attributes_for :investor_transactions

  has_many :investor_financings
  accepts_nested_attributes_for :investor_financings

end
