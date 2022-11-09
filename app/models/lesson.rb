# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :title, :image, :address, :information, :price, :schedule, presence: true
  validates :user_id, uniqueness: true
  is_impressionable counter_cache: true
end
