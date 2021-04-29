module MessagesControllerConcern
  extend ActiveSupport::Concern

  def create(resource, path)
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.messageable = resource
    if @message.save
      redirect_to path
    else
      render "chatrooms/show"
    end
    ChatroomChannel.broadcast_to(
      @chatroom,
      render_to_string(partial: "shared/message", locals: { message: @message })
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