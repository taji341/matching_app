# frozen_string_literal: true

FactoryBot.define do
  factory :favorite do
    user { nil }
    lesson { nil }
  end
end
