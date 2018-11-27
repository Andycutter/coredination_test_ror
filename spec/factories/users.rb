FactoryBot.define do
  factory :user do
    email { 'random@test.se' }
    password { 'my-password' }
  end
end
