class VideoroomsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_videoroom, only: [:show]

  def show
    @patient = @videoroom.patient
    @chatroom = @patient.chatroom
  end

  private

  def set_videoroom
    @videoroom = Videoroom.find(params[:id])
  end

end
