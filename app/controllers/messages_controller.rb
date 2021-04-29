class MessagesController < ApplicationController
  include MessagesControllerConcern

  before_action :authenticate_patient!

  before_action :set_chatroom, only: [:create]

  def create
    resource = current_patient
    path = chatroom_path(@chatroom)
    super(resource, path)
  end
end