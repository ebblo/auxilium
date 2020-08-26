class PatientsController < ApplicationController
  def index
    doctor = current_user
    @patients = doctor.patients
  end

  # patient#show on patient's side
  def my_profile 
    @patient = current_user
    @doctor = @patient.doctor
    @consultations = @patient.consultations
    ######## DON'T DELETE COMMENTS BELOW! DOCUMENTATION ON WHICH VARIABLES ARE NECESSARY FOR THE VIEWS
    # @last_consultation = @patient.consultations.where.not(public_report: nil).last
    # @next_consultation = @patient.consultations.where(public_report: nil).first
    # @prescriptions = @last_consultation.consultation_medications
    render "show"
  end

  # patient#show on doctor's side
  def show
    @patient = Patient.find(params[:id])
    @consultations = @patient.consultations
    ######## DON'T DELETE COMMENTS BELOW! DOCUMENTATION ON WHICH VARIABLES ARE NECESSARY FOR THE VIEWS
    # @last_consultation = @patient.consultations.where.not(public_report: nil).last 
    # @next_consultation = @patient.consultations.where(public_report: nil).first
    # @prescriptions = @last_consultation.consultation_medications
  end
end
