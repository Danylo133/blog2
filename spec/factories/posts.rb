FactoryGirl.define do

  factory :post do
    association :category
    title  "fake title"
    text   "fake text"
  end

  factory :category do
    name "fake category name"
  end

  # factory :comment do
  #   association :post
  #   body "fake body text"
  # end
  # factory :user do
  #   email "fake@email.com"
  #   password
  #   confirm password
  #   name "Fake User"
  # end
end

