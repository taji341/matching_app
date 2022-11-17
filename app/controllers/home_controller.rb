# frozen_string_literal: true

class HomeController < ApplicationController
  def top
    @q = Lesson.ransack(params[:q])
    @rank_lessons = Lesson.order(impressions_count: 'DESC').includes([:user, :favorites])
  end
end
