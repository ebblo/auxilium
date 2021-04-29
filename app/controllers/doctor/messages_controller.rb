class Doctor::MessagesController < ApplicationController
  include MessagesControllerConcern

  before_action :authenticate_doctor!

  before_action :set_chatroom, only: [:create]

  def create
    resource = current_doctor
    path = doctor_chatroom_path(@chatroom)
    super(resource, path)
  end
end
