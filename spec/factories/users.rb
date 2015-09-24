FactoryGirl.define do
  factory :user do
    # provider "github"
    sequence(:uid) { '12345' }
    sequence(:name) { |n| "Person_#{n}" }
  end
end

