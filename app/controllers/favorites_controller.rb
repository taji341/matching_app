class FavoritesController < ApplicationController
  before_action :set_lesson
  before_action :authenticate_user!

  def create
    if @lesson.user_id != current_user.id
      @favorite = Favorite.create(user_id: current_user.id, lesson_id: @lesson.id)
    end
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
