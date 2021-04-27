class Doctor::ConsultationsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_patient, only: [ :index, :create  ]
  before_action :set_consultation, only: [ :show, :edit, :update ]

  def index
    @past_consultations = @patient.consultations.past.order(date: :desc)
    @upcoming_consultations = @patient.consultations.upcoming.order(date: :desc)
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end

  def show
    @consultation_medications = @consultation.consultation_medications.includes(:medication)
    @patient = @consultation.patient
    @chatroom = @patient.chatroom
    @videoroom = @patient.videoroom
  end

  def edit
    if params[:consultation_medication].present?
      @consultation_medication = ConsultationMedication.find(params[:consultation_medication])
    else
      @consultation_medication = ConsultationMedication.new
    end
    @medications = Medication.all
    @chatroom = @consultation.patient.chatroom
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.doctor = current_doctor
    @consultation.patient = @patient
    if @consultation.save
      redirect_to patient_consultations_path
    else
      render "new"
    end
  end

  def update
    if @consultation.update(consultation_params)
      redirect_to consultation_path(@consultation)
    else
      render "edit"
    end
  end

  private

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def consultation_params
    params.require(:consultation).permit(:date, :public_report, :private_report)
  end
end
