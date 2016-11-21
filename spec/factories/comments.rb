FactoryGirl.define do

  factory :comment do
    association :post#, :user
    body "fake body text"
  end
end
