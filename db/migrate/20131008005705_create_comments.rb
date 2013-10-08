class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |g|
      g.string :body
      g.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
