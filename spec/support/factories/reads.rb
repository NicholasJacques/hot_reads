FactoryGirl.define do
  sequence :user_id do |n|
    "#{n}"
  end

  factory :read do
    user_id
    link
  end
end
