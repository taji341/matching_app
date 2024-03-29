# frozen_string_literal: true

class HomeController < ApplicationController
  def top
    @q = Lesson.ransack(params[:q])
    @rank_lessons = Lesson.order(impressions_count: 'DESC').includes(%i(user favorites)).limit(3)
  end

  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |u|
      u.name = 'GuestUser'
      u.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
