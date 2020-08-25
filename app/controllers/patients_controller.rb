class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @doctor = current_user
    @patients = @doctor.patients
  end
  
end
