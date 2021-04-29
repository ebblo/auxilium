module VideoroomsControllerConcern
  extend ActiveSupport::Concern

  def show(patient)
    @chatroom = patient.chatroom
  end
end