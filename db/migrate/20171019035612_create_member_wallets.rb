class CreateMemberWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :member_wallets do |t|
      t.belongs_to :member, index: true

      t.decimal :balance, :precision => 15, :scale => 0
      t.timestamps
    end
  end

  def down
    drop_table :member_wallets
  end
end
