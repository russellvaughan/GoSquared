FactoryGirl.define do
  factory :blog, class: Blog do
  	id 3
    title "MyString"
    content "MyText"
    association :user
  end

  factory :invalid_attributes, class: Blog do
    id 2
    title "MyString"
    association :user
  end
end
