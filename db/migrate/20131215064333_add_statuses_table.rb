class AddStatusesTable < ActiveRecord::Migration
 def change
    create_table :statuses do |t|
      t.integer :user_id
      t.integer :stream_id
      t.text :text
      t.timestamps
     end
  end
end