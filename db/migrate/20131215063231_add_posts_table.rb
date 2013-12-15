class AddPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :stream_id
      t.string :title
      t.text :message
      t.string :url
      t.timestamps
     end

  end
end
