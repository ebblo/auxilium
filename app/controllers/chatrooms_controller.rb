class ChatroomsController < ApplicationController
  include ChatroomsControllerConcern

  before_action :authenticate_patient!

  before_action :set_chatroom, only: [:show]

  def show
    super(current_patient)
    @doctor = current_patient.doctor
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id]) if Chatroom.find(params[:id]).patient == current_patient
  end

end