# frozen_string_literal: true

class UsersController < ApplicationController

  def index
    @lesson = current_user.lesson
  end

  def show
    @user = User.find(params[:id])
    @lesson = @user.lesson
  end
  
end
