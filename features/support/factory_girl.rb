FactoryGirl.define do

  factory :user do
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'

    trait :with_streams do
      after :create do |user|
        FactoryGirl.create_list :stream, Random.rand(1..10), :user => user
      end
    end
  end

  factory :stream do |f|
    f.sequence(:name) { Faker::Lorem.word }

      trait :with_posts do
        after :create do |stream|
          FactoryGirl.create_list :post, Random.rand(5..10), :stream => stream
        end
      end
  end

  factory :post do |f|
    f.sequence(:title) { Faker::Lorem.word }
    f.sequence(:message) { Faker::Lorem.sentence }
    f.sequence(:url) { Faker::Internet.url }
  end
end