class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |g|
      g.string :username, :password
    end
  end

  def down
    drop_table :users
  end
end
