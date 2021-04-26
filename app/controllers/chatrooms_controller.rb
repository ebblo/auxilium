class ChatroomsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_chatroom, only: [:show]

  def show
    @messages = @chatroom.messages
    @message = Message.new
    @patient = @chatroom.patient
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

end
