class PatientsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_patient, only: [:show]

  def index
    @patients = current_doctor.patients.order(:last_name).uniq
  end

  # patient#show on patient's side
  def my_profile 
    @patient = current_patient
    @doctor = @patient.doctor
    @consultations = @patient.consultations.order(:date)
    open_chatroom
    render "show"
  end

  # patient#show on doctor's side
  def show
    @next_consultation = @patient.next_consultation
    @last_consultation = @patient.last_consultation
    @new_consultation = Consultation.new
    @chatroom = @patient.chatroom
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
