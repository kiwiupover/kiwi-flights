# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :van do
    name "MyString"
    description "MyString"
    details "MyText"
    image_url "MyString"
    brand "MyString"
    beds "Integer"
    rating "MyString"
  end
end
