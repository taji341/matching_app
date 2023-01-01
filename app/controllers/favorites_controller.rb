# frozen_string_literal: true

class FavoritesController < ApplicationController
  before_action :set_lesson
  before_action :authenticate_user!

  def create
    @favorite = Favorite.create(user_id: current_user.id, lesson_id: @lesson.id) if @lesson.user_id != current_user.id
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, lesson_id: @lesson.id)
    @favorite.destroy
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end
end
