class PatientsController < ApplicationController
  before_action :authenticate_patient!

  before_action :set_patient, only: [ :dashboard ]

  def dashboard
    @doctor = @patient.doctor
    @next_consultation = @patient.next_consultation
    @last_consultation = @patient.last_consultation
    @chatroom = @patient.chatroom
    @videoroom = @patient.chatroom
  end

  private

  def set_patient
    @patient = current_patient
  end
end
