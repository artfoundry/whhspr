# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DISCUSSIONS = 10
COMMENTS_PER_DISCUSSION = 3

DISCUSSIONS.times do
  discussion = Discussion.create(
      :title = Faker::Lorem.sentence()
      :body = Faker::Lorem.sentence(3)
    )
  COMMENTS_PER_DISCUSSION.times do
    Comment.create(
      :body = Faker::Lorem.sentence(3)
      :discussion = discussion
    )
  end
end