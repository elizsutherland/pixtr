class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.integer :group_id
      t.integer :image_id

      t.timestamps
    end
    add_index :groupings, [:group_id, :image_id], unique: true
  end
end
