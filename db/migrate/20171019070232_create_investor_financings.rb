class CreateInvestorFinancings < ActiveRecord::Migration[5.1]
  def change
    create_table :investor_financings do |t|
      t.belongs_to :investor, index: true
      t.belongs_to :loan, index: true

      t.decimal :contribution_amount, :precision => 15, :scale => 0

      t.timestamps


      t.timestamps
    end
  end
end
