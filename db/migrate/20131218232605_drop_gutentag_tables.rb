class DropGutentagTables < ActiveRecord::Migration
  def change
    drop_table :gutentag_tags
    drop_table :gutentag_taggings
  end
end
