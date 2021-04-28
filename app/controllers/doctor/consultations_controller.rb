class Doctor::ConsultationsController < ApplicationController
  include ConsultationsControllerConcern

  before_action :authenticate_doctor!

  before_action :set_patient, only: [ :index, :create  ]
  before_action :set_consultation, only: [ :show, :edit, :update ]

  def show
    @patient = @consultation.patient
    super
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
      redirect_to doctor_patient_consultations_path
    else
      render "new"
    end
  end

  def update
    if @consultation.update(consultation_params)
      redirect_to doctor_consultation_path(@consultation)
    else
      render "edit"
    end
  end

  private

  def set_consultation
    @consultation = Consultation.find(params[:id]) if Consultation.find(params[:id]).doctor == current_doctor
  end

  def set_patient
    @patient = Patient.find(params[:patient_id]) if Patient.find(params[:patient_id]).doctor == current_doctor
  end

  def consultation_params
    params.require(:consultation).permit(:date, :public_report, :private_report)
  end
end
