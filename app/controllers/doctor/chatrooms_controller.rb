class Doctor::ChatroomsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_chatroom, only: [:show]

  def show
    @messages = @chatroom.messages
    @message = Message.new
    @patient = @chatroom.patient
    @videoroom = @patient.videoroom
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id]) if Chatroom.find(params[:id]).doctor == current_doctor
  end

end
