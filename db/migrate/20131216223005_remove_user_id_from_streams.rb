class RemoveUserIdFromStreams < ActiveRecord::Migration
  def up
    remove_column :streams, :user_id
  end

  def down
    add_column :streams, :user_id, :integer
  end
end
