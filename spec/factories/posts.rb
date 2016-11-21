FactoryGirl.define do

  factory :post do
    association :category
    title  "fake title"
    text   "fake text"
  end

  factory :category do
    name "fake category name"
  end
end

