# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'テストユーザー' }
    email { 'test@example.com' }
    password { 'password' }
    image { File.open("#{Rails.root}/spec/fixtures/test-user.jpeg") }
    address { '東京都' }
    introduction { 'テストユーザー' }
    gender { '1' }

    factory :user1 do
      email { 'test1@example.com' }
      gender { '2' }
    end

    factory :user3 do
      email { 'test3@example.com' }
      gender { '2' }
    end
  end

  factory :user2, class: User do
    name { 'テストユーザー' }
    email { 'test2@example.com' }
    password { 'password' }
  end
end
