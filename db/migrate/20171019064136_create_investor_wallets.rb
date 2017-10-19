class CreateInvestorWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_wallets do |t|
      t.belongs_to :investor, index: true
      t.decimal :balance, :precision => 15, :scale => 0

      t.timestamps
    end
  end
end
