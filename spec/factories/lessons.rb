# frozen_string_literal: true

FactoryBot.define do
  factory :lesson do
    title { 'テストレッスン' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test-lesson.jpg')) }
    information { 'テストレッスンの説明' }
    address { '東京都' }
    price { '1h/1000' }
    schedule { '毎日開催' }
    user
  end
end
