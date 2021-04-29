class ConsultationsController < ApplicationController
  before_action :set_patient

  def create
    # @patient = Patient.find(params[:patient_id])
    @consultation = Consultation.new(consultation_params_create)
    @consultation.doctor = current_user
    @consultation.patient = @patient
    @consultation.save!
    redirect_to patient_path(@patient)
  end

  def update
    # @patient = Patient.find(params[:patient_id])
    @consultation = Consultation.find(params[:id])
    @consultation.update(consultation_params_update)
    redirect_to patient_path(@patient)
  end

  private

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
