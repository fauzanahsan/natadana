class CreateCommunityFinancings < ActiveRecord::Migration[5.1]
  def change
    create_table :community_financings do |t|
      t.belongs_to :community, index: true
      t.belongs_to :loan, index: true

      t.decimal :contribution_amount, :precision => 15, :scale => 0

      t.timestamps
    end
  end
end
