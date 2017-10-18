class CreateCommunityMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :community_members do |t|
      t.references :community
      t.references :member
      t.timestamps
    end

    add_index :community_members, [:community_id, :member_id], :name => "community_member_community_member"

  end

  def down
  	drop_table :community_members
  end
end
