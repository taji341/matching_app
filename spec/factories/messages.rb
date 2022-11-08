# frozen_string_literal: true

FactoryBot.define do
  factory :message do
    content { 'MyText' }
    user_id { 1 }
    to_user_id { 1 }
    to_user_opentime { '2022-11-06 06:00:06' }
  end
end
