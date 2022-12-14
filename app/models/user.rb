# frozen_string_literal: true

class User < ApplicationRecord
  has_one :lesson, dependent: :destroy
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages, dependent: :destroy
  has_many :favorites, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :introduction, length: { maximum: 300 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
