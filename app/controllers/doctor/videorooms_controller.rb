class Doctor::VideoroomsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_videoroom, only: [:show, :update]

  def show
    @patient = @videoroom.patient
    @chatroom = @patient.chatroom
  end

  def update
    if @videoroom.update(videoroom_params)
      redirect_to doctor_videoroom_path(@videoroom)
    else
      render "viderooms/show"
    end
  end

  private

  def set_videoroom
    @videoroom = Videoroom.find(params[:id])
  end

  def videoroom_params
    params.require(:videoroom).permit(:url)
  end

end
