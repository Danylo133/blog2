FactoryGirl.define do

  factory :post do
    association :category#, :user
    title  {"fake title"}
    text   "fake text"
    # title  { Faker::Name.title }
    # text   { Faker::Name.text }
  end
  end

