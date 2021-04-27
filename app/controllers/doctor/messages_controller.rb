class Doctor::MessagesController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_chatroom, only: [:create]

  def create
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.messageable = current_doctor
    if @message.save
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show"
    end
    ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "messages/message", locals: { message: @message })
    )
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
