class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name, :default => ""
      t.string :email, :default => ""
      t.string :phone_number, :default => ""

      t.timestamps
    end
  end

  def down
    drop_table :members
  end
end
