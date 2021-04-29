class VideoroomsController < ApplicationController
  include VideoroomsControllerConcern

  before_action :authenticate_patient!

  before_action :set_videoroom, only: [:show]

  def show
    super(current_patient)
  end

  private

  def set_videoroom
    @videoroom = Videoroom.find(params[:id]) if Videoroom.find(params[:id]).patient == current_patient
  end

end