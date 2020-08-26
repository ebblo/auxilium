class ConsultationsController < ApplicationController

  def create
    @patient = Patient.find(params[:patient_id])
    @consultation = Consultation.new(consultation_params)
    @consultation.doctor = current_user
    @consultation.patient = @patient
    @consultation.save!
    redirect_to patient_path(@patient)
  end

  private

  def consultation_params
    params.require(:consultation).permit(:title, :date)
  end
end
