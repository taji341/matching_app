# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'テストユーザー' }
    email { 'test@example.com' }
    password { 'password' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test-user.jpeg')) }
    address { '東京都' }
    introduction { 'テストユーザー' }
    gender { '1' }
  end
  factory :user1, class: User do
    name { 'テストユーザー' }
    email { 'test1@example.com' }
    password { 'password' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test-user.jpeg')) }
    address { '東京都' }
    introduction { 'テストユーザー' }
    gender { '2' }
  end
  factory :user2, class: User do
    name { 'テストユーザー' }
    email { 'test2@example.com' }
    password { 'password' }
  end
  factory :user3, class: User do
    name { 'テストユーザー' }
    email { 'test3@example.com' }
    password { 'password' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test-user.jpeg')) }
    address { '東京都' }
    introduction { 'テストユーザー' }
    gender { '2' }
  end
end
