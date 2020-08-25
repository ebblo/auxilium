class PatientsController < ApplicationController
  def index
    @doctor = current_user
    @patients = @doctor.patients
  end

  def show
    @patient = Patient.find(params[:id])
    @doctor = @patient.doctor
    @last_consultation = @patient.consultations.where.not(public_report: nil).last
    @next_consultation = @patient.consultations.where(public_report: nil).first
    @consultations = @patient.consultations
    @prescriptions = @last_consultation.consultation_medications
  end

  def index
    @doctor = current_user
    @patients = @doctor.patients
  end

  def my_patient
    @patient = Patient.find(params[:id])
    @last_consultation = @patient.consultations.where.not(public_report: nil).last 
    @next_consultation = @patient.consultations.where(public_report: nil).first
    @prescriptions = @last_consultation.consultation_medications
  end
end
