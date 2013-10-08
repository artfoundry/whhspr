require 'Faker'

FactoryGirl.define do

  factory :comment do
    body      Faker::Lorem.sentence(3)
    discussion
  end

  factory :discussion do
    title     Faker::Lorem.sentence()
    body      Faker::Lorem.sentence(3)

    factory :discussion_with_comments do
      after(:create) do |discussion|
        FactoryGirl.create_list(:comment, 5, discussion: discussion)
      end
    end
  end

  sequence :discussion do |n|
    ""
  end

end