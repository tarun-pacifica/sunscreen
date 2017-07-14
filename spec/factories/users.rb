FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    phone_number { Faker::Number.number(10) }
    password "password"
    password_confirmation "password"
    first_name "Bob"
    last_name "Terwilliger"

    trait :confirmed do
      after(:build) do |user|
        user.confirmed_at = Date.today
      end
    end

    trait :unconfirmed do
      after(:build) do |user|
        user.confirmed_at = nil
      end
    end

    trait :expired_confirmation do
      after(:build) do |user|
        user.confirmed_at = nil
        user.confirmation_sent_at = 4.days.ago
      end
    end
  end
end
