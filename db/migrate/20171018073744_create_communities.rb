class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :community_name, :default => ""
      t.integer :leader_id, :default => nil
      t.integer :created_by, :default => nil
      t.decimal :iuran_pokok, :precision => 15, :scale => 0
      t.decimal :iuran_wajib, :precision => 15, :scale => 0
      t.decimal :iuran_sukarela, :precision => 15, :scale => 0

      t.timestamps
    end
  end

  def down
    drop_table :communities
  end
end
