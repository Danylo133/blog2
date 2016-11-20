FactoryGirl.define do
  factory :post do
    title { "Faker::Name.title" }
    text  { "Faker::Name.text" }


  end
end