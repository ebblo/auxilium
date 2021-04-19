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
    # @doctor = current_user
    # @consultations = @patient.consultations.order(:date)
    # @new_consultation = Consultation.new
    # @new_consultation_medication = ConsultationMedication.new
    # open_chatroom
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def open_chatroom
    @chatroom = Chatroom.where(patient: @patient, doctor: @doctor).first
    if @chatroom.nil?
      @chatroom = Chatroom.new
      @chatroom.patient = @patient
      @chatroom.doctor = @doctor
      @chatroom.save!
    end
    @message = Message.new
  end
end
