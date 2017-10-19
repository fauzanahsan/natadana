class CreateCommunityMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :community_members do |t|
      t.belongs_to :community, index: true
      t.belongs_to :member, index:true
      t.timestamps
    end


  end

  def down
  	drop_table :community_members
  end
end
