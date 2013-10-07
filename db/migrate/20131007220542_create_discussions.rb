class CreateDiscussions < ActiveRecord::Migration
  def up
    create_table :discussions do |t|
      t.string :body
      t.string :title
      t.timestamps
    end
  end

  def down
    drop_table :discussions
  end
end
