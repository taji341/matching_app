# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :content, presence: true
  validates :content, length: { maximum: 500 }
end
