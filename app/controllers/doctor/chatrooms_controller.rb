class Doctor::ChatroomsController < ApplicationController
  include ChatroomsControllerConcern

  before_action :authenticate_doctor!

  before_action :set_chatroom, only: [:show]

  def show
    @patient = @chatroom.patient
    super(@patient)
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id]) if Chatroom.find(params[:id]).doctor == current_doctor
  end

end
