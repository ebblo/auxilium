class MessagesController < ApplicationController
  before_action :set_chatroom, only: [:create]

  def create
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    # TODO -> POLYMORPHIC RELATION: MESSAGE POINTS EITHER TO DOCTOR OR TO PATIENT
    



    # @message = Message.new(message_params)
    # @message.chatroom = @chatroom
    # @message.user = current_user
    # @message.save!
    # # redirect_back(fallback_location: root_path)
    # ChatroomChannel.broadcast_to(
    #   @chatroom,
    #   render_to_string(partial: "messages/message", locals: { message: @message })
    # )
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
