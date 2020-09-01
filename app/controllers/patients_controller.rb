class PatientsController < ApplicationController
  def index
    doctor = current_user
    @patients = doctor.patients.order(:last_name).uniq
  end

  # patient#show on patient's side
  def my_profile 
    @patient = current_user
    @doctor = @patient.doctor
    @consultations = @patient.consultations.order(date: :desc)
    open_chatroom
    render "show"
  end

  # patient#show on doctor's side
  def show
    @patient = Patient.find(params[:id])
    @doctor = current_user
    @consultations = @patient.consultations.order(date: :desc)
    @new_consultation = Consultation.new
    open_chatroom
  end

  private

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
