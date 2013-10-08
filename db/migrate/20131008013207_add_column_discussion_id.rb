class AddColumnDiscussionId < ActiveRecord::Migration
  def up
    add_column :comments, :discussion_id, :integer
  end

  def down
    remove_column :comments, :discussion_id
  end
end