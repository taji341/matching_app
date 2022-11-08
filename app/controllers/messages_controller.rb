# frozen_string_literal: true

class MessagesController < ApplicationController
  def index
    @user = User.find_by(id: current_user.id)
    @message_user_ids = Message.where(to_user_id: @user.id).or(Message.where(user_id: @user.id)).distinct.pluck(:user_id)
    @message_user_ids.delete(@user.id)
  end

  def show
    @new_message = Message.new
    @message = Message.find(params[:id])
    @to_user_id =
      if @message.user_id == current_user.id
        @message.to_user_id
      else
        @message.user_id
      end
    @messages = Message.where(user_id: @message.user_id, to_user_id: @message.to_user_id).or(Message.where(user_id: @message.to_user_id, to_user_id: @message.user_id)).order(created_at: :asc).includes([:user])
    @message.to_user_opentime = Date.today.to_time
    @message.save
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = '送信しました！'
      redirect_to message_path(@message.id)
    else
      redirect_to('/')
      flash[:alert] = '送信できませんでした'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :to_user_id).merge(user_id: current_user.id)
  end
end
