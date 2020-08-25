class RemoveMedicalPrescriptionFromConsultation < ActiveRecord::Migration[6.0]
  def change
    remove_column :consultations, :medical_prescription, :string
  end
end
