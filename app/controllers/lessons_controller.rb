# frozen_string_literal: true

class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def index
    @q = Lesson.ransack(params[:q])
    @lessons = @q.result.includes([:user])
  end

  def show
    @lesson = Lesson.find(params[:id])
    impressionist(@lesson, nil, unique: [:ip_address])
    @message = Message.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:notice] = 'レッスンを登録しました'
      redirect_to users_path
    else
      render 'new'
      flash[:alert] = 'エラー'
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = 'レッスンを編集しました'
      redirect_to users_path
    else
      render 'edit'
      flash[:alert] = 'エラー'
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = 'レッスンを削除しました'
    redirect_to
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :image, :address, :information, :price, :schedule).merge(user_id: current_user.id)
  end
end
