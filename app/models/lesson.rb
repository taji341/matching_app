# frozen_string_literal: true
class Lesson < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, :image, :address, :information, :price, :schedule, presence: true
  validates :user_id, uniqueness: true
  validates :information, length: { maximum: 1000 }
  is_impressionable counter_cache: true
end
