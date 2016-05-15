FactoryGirl.define do
  factory :user, class: User do
  	email "admin@email.com"
    password "password123"
  end

  factory :user2, class: User  do
  	email "admin2@email.com"
    password "password123"
  end
end
