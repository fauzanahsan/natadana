class CreateInvestorTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_transactions do |t|

      t.belongs_to :investor, index: true
      t.decimal :total_amount, :precision => 15, :scale => 0
      t.string :transaction_type, :default => ""
      t.string :va_number, :default => ""
      t.string :payment_status, :default => ""
      t.datetime :transaction_time

      t.timestamps
    end
  end
end
