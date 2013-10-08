FactoryGirl.define do
  factory :comment do
    body      "I still don't think he's better than Tom Brady."
    discussion
  end

  factory :discussion do
    title     "Peyton Manning"
    body      "Will he lead the Broncos to the Super Bowl??"
  end
end