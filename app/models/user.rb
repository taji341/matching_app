# frozen_string_literal: true

class User < ApplicationRecord
  has_one :lesson, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :favorites, dependent: :destroy 
  mount_uploader :image, ImageUploader
  validates :introduction, length: { maximum: 200 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
