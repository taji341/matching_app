# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user)
    unread_messages = @messages.where(to_user_opentime: nil, user_id: !current_user.id)
    unread_messages.each do |unread_message|
      unread_message.to_user_opentime = Date.today.to_time
      unread_message.save
    end
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      flash[:notice] = '送信しました！'
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      flash[:alert] = '送信できませんでした'
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
