class RoomsController < ApplicationController

  def index
    
  end

  def create
    @room = Room.new(room_params)
    @room.save
    redirect_to room_messages_path(@room)
  end

  private

  def room_params
  params.permit(user_ids: [])
  end
end
