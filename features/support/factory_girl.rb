FactoryGirl.define do

  factory :user do
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
  end

  factory :stream do
   f.sequence(:name) { Faker::Lorem.word }
  end

  factory :post do |f|
    f.sequence(:title) { Faker::Lorem.word }
    f.sequence(:message) { Faker::Lorem.sentence }
    f.sequence(:url) { Faker::Internet.url }
  end

  factory :user_with_stream do
    after(:create) do |u, evaluator|
      FactoryGirl.create_list(:stream, Random.rand(1..10), :user => u
    end
  end

  factory :stream_with_post do
    after(:create) do |s, evaluator|
      FactoryGirl.create_list(:post, Random.rand(5..10), :stream => s
    end
  end
end