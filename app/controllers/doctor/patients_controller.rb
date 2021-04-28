class Doctor::PatientsController < ApplicationController
  include PatientsControllerConcern

  before_action :authenticate_doctor!

  before_action :set_patient, only: [:show]

  def index
    @patients = current_doctor.patients.order(:last_name)
  end

  def show
    patient_profile
    @new_consultation = Consultation.new
  end

  private

  def set_patient
    @patient = Patient.find(params[:id]) if Patient.find(params[:id]).doctor == current_doctor
  end
end


