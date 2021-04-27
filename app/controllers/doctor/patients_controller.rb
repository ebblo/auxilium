class Doctor::PatientsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_patient, only: [:show]

  def index
    @patients = current_doctor.patients.order(:last_name)
  end

  def show
    @next_consultation = @patient.next_consultation
    @last_consultation = @patient.last_consultation
    @new_consultation = Consultation.new
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
