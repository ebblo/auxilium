class ConsultationsController < ApplicationController
  before_action :set_patient, only: [ :create ]
  before_action :set_consultation, only: [ :show, :edit ]

  def show
    @consultation_medications = @consultation.consultation_medications.includes(:medication)
  end

  def edit
    if params[:consultation_medication].present?
      @consultation_medication = ConsultationMedication.find(params[:consultation_medication])
    else
      @consultation_medication = ConsultationMedication.new
    end
    @medications = Medication.all
  end

  def create
    # @patient = Patient.find(params[:patient_id])
    @consultation = Consultation.new(consultation_params_create)
    @consultation.doctor = current_user
    @consultation.patient = @patient
    @consultation.save!
    redirect_to patient_path(@patient)
  end

  def update
    @consultation = Consultation.find(params[:id])
    @consultation.update(consultation_params_update)
    if @consultation.save
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

  def consultation_params_create
    params.require(:consultation).permit(:title, :date)
  end

  def consultation_params_update
    params.require(:consultation).permit(:public_report, :private_report)
  end
end
