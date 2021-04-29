module ChatroomsControllerConcern
  extend ActiveSupport::Concern

  def show(patient)
    @messages = @chatroom.messages
    @message = Message.new
    @videoroom = patient.videoroom
  end
end