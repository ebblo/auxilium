class Doctor::ConsultationMedicationsController < ApplicationController
  before_action :authenticate_doctor!

  before_action :set_consultation, only: [ :create ]
  before_action :set_consultation_medication, only: [ :destroy, :update]

  def create
    @consultation_medication = ConsultationMedication.new(consultation_medication_params)
    @consultation_medication.consultation = @consultation
    if @consultation_medication.save
      redirect_to doctor_consultation_path(@consultation)
    else
      render 'consultations/edit'
    end
  end

  def update
    if @consultation_medication.update(consultation_medication_params)
      redirect_to doctor_consultation_path(@consultation_medication.consultation)
    else
      render "consultations/edit"
    end
  end

  def destroy
    @consultation_medication.destroy
    redirect_to doctor_consultation_path(@consultation_medication.consultation)
  end

  private

  def set_consultation_medication
    @consultation_medication = ConsultationMedication.find(params[:id])
  end

  def set_consultation
    @consultation = Consultation.find(params[:consultation_id])
  end

  def consultation_medication_params
    params.require(:consultation_medication).permit(:medication_id, :description, :quantity)
  end
end
