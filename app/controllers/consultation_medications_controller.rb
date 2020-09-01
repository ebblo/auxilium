class ConsultationMedicationsController < ApplicationController
  before_action :set_patient_consultation

  def create
    @consultation_medication = ConsultationMedication.new(consultation_medication_params)
    @consultation_medication.consultation = @consultation
    @consultation_medication.medication = Medication.find(params[:consultation_medication][:medication_id])
    if @consultation_medication.save!
      redirect_to patient_path(@patient)
    else
      render 'patient/show'
    end
  end

  def update
    @consultation_medication = ConsultationMedication.find(params[:id])
    @consultation_medication.update(consultation_medication_params)
    redirect_to patient_path(@patient)
  end

  private

  def set_patient_consultation
    @patient = Patient.find(params[:patient_id])
    @consultation = Consultation.find(params[:consultation_id])
  end

  def consultation_medication_params
    params.require(:consultation_medication).permit(:medication_id, :description, :quantity)
  end
end
