# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    name "MyString"
    details "MyString"
    img_url "MyString"
    itinerary nil
  end
end
