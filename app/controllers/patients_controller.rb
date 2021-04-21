class PatientsController < ApplicationController
  before_action :set_patient, only: [:show]

  def index
    doctor = current_user
    @patients = doctor.patients.order(:last_name).uniq
  end

  # patient#show on patient's side
  def my_profile 
    @patient = current_user
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
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
