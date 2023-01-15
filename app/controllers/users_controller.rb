# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @lesson = current_user.lesson
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'ユーザーの設定を編集しました'
      redirect_to users_path
    else
      render 'edit'
      flash[:alert] = 'エラー'
    end
  end

  def favorites
    favorites = Favorite.where(user_id: current_user.id).pluck(:lesson_id)
    @favorite_list = Lesson.includes([:user, :favorites]).find(favorites)
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :gender, :address, :introduction)
  end
end
