class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :url
      t.integer :gallery_id

      t.timestamps
    end
  end
end
