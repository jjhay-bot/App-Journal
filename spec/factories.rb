FactoryBot.define do
  factory :user do
    email { 'user1@mail.com' }
    password { '123qwe' }
    password_confirmation { '123qwe' }
    # using dynamic attributes over static attributes in FactoryBot

    # if needed
    # is_active true
  end
end
