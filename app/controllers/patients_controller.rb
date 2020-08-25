class PatientsController < ApplicationController
  # def index
  #   @patients = Patient.all
  # end

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

end
