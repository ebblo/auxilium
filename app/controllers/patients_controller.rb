class PatientsController < ApplicationController
  def index
    @doctor = current_user
    @patients = @doctor.patients
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def my_patient
    @patient = Patient.find(params[:id])
    @last_consultation = @patient.consultations.where.not(public_report: nil).last 
    @next_consultation = @patient.consultations.where(public_report: nil).first
    @prescriptions = @last_consultation.consultation_medications
  end
end
