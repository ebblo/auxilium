class PatientsController < ApplicationController
  include PatientsControllerConcern

  before_action :authenticate_patient!

  before_action :set_patient, only: [ :dashboard ]

  def dashboard
    patient_profile
    @doctor = @patient.doctor
  end

  private

  def set_patient
    @patient = current_patient
  end
end
