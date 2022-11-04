# frozen_string_literal: true

class HomeController < ApplicationController
  def top
    @q = Lesson.ransack(params[:q])
  end
end
