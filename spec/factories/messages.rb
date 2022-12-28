# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    content { 'テストメッセージ' }
    to_user_opentime { nil }
  end
end
