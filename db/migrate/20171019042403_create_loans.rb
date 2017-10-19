class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.belongs_to :member, index: true
      t.string :credit_rating, :default => ""
      t.decimal :loan_amount, :precision => 15, :scale => 0 
      t.datetime :due_date
      t.string :loan_status
      t.decimal :mutual_rate, :precision => 3, :scale => 2

      t.timestamps
    end
  end
end
