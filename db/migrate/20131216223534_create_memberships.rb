class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :stream_id
      t.text :status

      t.timestamps
    end
  end
end
